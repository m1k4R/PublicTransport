import { Component, OnInit, OnDestroy } from '@angular/core';
import { AlertifyService } from 'src/app/_services/alertify.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Line } from 'src/app/_models/line';
import { TimeTable } from 'src/app/_models/timeTable';
import { Departures } from 'src/app/_models/departures';
import { Directions } from 'src/app/_models/directions';
import { Station } from 'src/app/_models/station';
import { SignalRService } from 'src/app/_services/signal-r.service';
import { HttpClient } from '@angular/common/http';
import { BusLocation } from 'src/app/_models/busLocation';

@Component({
  selector: 'app-timetable',
  templateUrl: './timetable.component.html',
  styleUrls: ['./timetable.component.css'],
  styles: ['agm-map {height: 100%; width: 100%;}']
})
export class TimetableComponent implements OnInit, OnDestroy {
  allTimetables: TimeTable[];
  allLines: Line[];
  day: string;
  type: string;
  selectedLine: number;
  line: Line;
  timetable = {} as TimeTable;
  isInitialized: boolean = false;
  departures: Departures[] = new Array(24);
  allDir: Directions[] = new Array<Directions>();
  dir = undefined;
  allStations: Station[];
  busLocation: BusLocation;
  options = {
      suppressMarkers: true,
      polylineOptions: { strokeColor: 'orange' }
  };
  icon = {
    url: '../../../assets/bus.png',
    scaledSize: {
      width: 75,
      height: 75
    }
  };
  iconbusstation = {
    //url: '../../../assets/busstation.png',
    scaledSize: {
      width: 30,
      height: 30
    }
  };

  //move marker
  numDeltas = 100;
  delay = 10; //milliseconds
  i = 0;
  deltaLat: any;
  deltaLng: any;

  constructor(private alertify: AlertifyService, private router: ActivatedRoute, private route: Router,
              public signalRService: SignalRService, private http: HttpClient) { }

  ngOnInit() {
    this.router.data.subscribe(data => {
      this.allTimetables = data.timetables;
      this.allLines = data.lines;
      this.signalRService.startConnection();
      const busLocationObservable = this.signalRService.addTransferBusLocationListener();
        busLocationObservable.subscribe((locationData: BusLocation) => {
          // console.log('linija: ' + this.selectedLine + 'dobijena linija: ' + locationData.lineId);
          if (locationData.lineId == this.selectedLine) {
            // console.log('Primljena linija je: ' + locationData.lineId);
            if (this.busLocation === undefined) {
              this.busLocation = locationData;
              //console.log("Prvi " + this.busLocation.x + " " + this.busLocation.y);
            }
            else
            {
              this.transition(locationData);
            }
          }
        });
  });

    this.day = 'Working day';
    this.type = 'In City';
  }

  transition(result: BusLocation) {
    //console.log("Transition " + result.x + " " + result.y);
    this.i = 0;
    this.deltaLat = (result.x - this.busLocation.x)/this.numDeltas;
    this.deltaLng = (result.y - this.busLocation.y)/this.numDeltas;
    this.moveMarker();
  }
  
  moveMarker() {
    //console.log("Dalje " + this.busLocation.x + " " + this.busLocation.y + " " + this.delay);
    this.busLocation.x = this.busLocation.x + this.deltaLat;
    this.busLocation.y = this.busLocation.y + this.deltaLng;
    //console.log("Saberi " + this.busLocation.x + " " + this.busLocation.y);
    if (this.i != this.numDeltas) {
      this.i++;
      //setTimeout(this.moveMarker, this.delay);
      setTimeout(() => {
        this.moveMarker();
      }, this.delay);
      //console.log("Zovi");
    }
  }

  ngOnDestroy() {
    this.signalRService.stopConnection();
  }

  private startHttpRequest = (lineId: number) => {
    this.http.get('http://localhost:5000/api/busLocation?lineId=' + lineId)
      .subscribe(res => {
        console.log(res);
      })
  }

  dayChanged(day: string) {
    this.day = day;
  }

  typeChanged(type: string) {
    this.type = type;
  }

  lineChanged(id: number) {
    this.selectedLine = id;
    this.allStations = null;
    this.allStations = new Array<Station>();
    this.hideDirections();
    this.showTimetable();
    this.initializeRoutes();
    this.startHttpRequest(id);
  }

  showTimetable() {
    this.timetable.day = this.day;
    this.timetable.type = this.type;
    let index = this.allLines.indexOf(this.allLines.find(line => +line.id === +this.selectedLine));
    this.line = this.allLines[index] as Line;
    this.timetable.line = this.line;
    this.timetable.departures = "";

    this.allTimetables.forEach(tmtable => {
      if (tmtable.day === this.day && tmtable.type === this.type && tmtable.lineId === this.line.id)
      {
        this.timetable.id = tmtable.id;
        this.timetable.type = tmtable.type;
        this.timetable.day = tmtable.day;
        this.timetable.line = this.line;
        this.timetable.departures = tmtable.departures;
      }
    });

    if (!this.isInitialized)
    {
      for(let i=0; i<this.departures.length; i++)
      {
        this.departures[i] = new Departures();
      }
      this.isInitialized = true;
    }

    let departuresToEdit = this.timetable.departures.split('/');
    for(let i=0; i<departuresToEdit.length; i++)
    {
      if (departuresToEdit[i] !== undefined)
      {
        let depToEdit = departuresToEdit[i].split(':'); //departures[].name = depToEdit[0]
        if (depToEdit[1] !== undefined)
        {
          /* let desc = depToEdit[1].replace('-', '  ') */
          this.departures[i].name = depToEdit[0];
          this.departures[i].description = depToEdit[1];
        }
      }
    }
  }

  initializeRoutes() {
    if (this.line.stations !== null || this.line.stations !== undefined || this.line.stations.length > 0) {
      let dir = new Directions();
      dir.waypoints = new Array<any>();
      if (this.line.stations[0] !== undefined) {
        dir.origin = {lat: this.line.stations[0].station.location.x, lng: this.line.stations[0].station.location.y};
        dir.destination = {lat: this.line.stations[this.line.stations.length - 1].station.location.x,
            lng: this.line.stations[this.line.stations.length - 1].station.location.y};
        this.line.stations.forEach(stl => {
          dir.waypoints.push({ location: { lat:  stl.station.location.x, lng: stl.station.location.y }, stopover: true });
          this.allStations.push(stl.station);
        });
        this.allDir.push(dir);
      }
    }
  }

  hideDirections() {
    console.log(this.allDir);
    for (let index = 0; index < this.allDir.length; index++) {
      this.allDir[index].show = false;
    }
  }
}
