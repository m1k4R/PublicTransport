import { Component, OnInit } from '@angular/core';
import { Ticket } from 'src/app/_models/ticket';
import { ActivatedRoute } from '@angular/router';
import { AlertifyService } from 'src/app/_services/alertify.service';
import { ControllerService } from 'src/app/_services/controller.service';
import { AuthService } from 'src/app/_services/auth.service';

@Component({
  selector: 'app-ticketVerification',
  templateUrl: './ticketVerification.component.html',
  styleUrls: ['./ticketVerification.component.css']
})
export class TicketVerificationComponent implements OnInit {
  tickets: Ticket[];
  validatedTicket: Ticket;
  ticketId = -1;

  constructor(private route: ActivatedRoute, private alertify: AlertifyService,
              private controllerService: ControllerService, private authService: AuthService) { }

  ngOnInit() {
    this.route.data.subscribe(data => {
      this.tickets = data.tickets;
    });
  }

  checkTicket(ticketId) {
    this.controllerService.verificateTicket(ticketId).subscribe(next => {
      const ticketResult = next as Ticket;
      const indx = this.tickets.indexOf(this.tickets.find(ticket => ticket.id === ticketId));
      this.tickets[indx].isValid = ticketResult.isValid;
    }, error => {
      this.alertify.error('Failed to check ticket!');
    });
  }

  checkTicketForId() {
    this.controllerService.verificateTicket(+this.ticketId).subscribe(next => {
      this.validatedTicket = next as Ticket;
      const indx = this.tickets.indexOf(this.tickets.find(ticket => ticket.id === this.validatedTicket.id));
      this.tickets[indx].isValid = this.validatedTicket.isValid;
    }, error => {
      this.alertify.error('Failed to check ticket!');
    });
  }
}
