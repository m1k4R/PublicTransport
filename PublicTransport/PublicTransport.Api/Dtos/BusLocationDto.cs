using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PublicTransport.Api.Dtos
{
    public class BusLocationDto
    {
        public double X { get; set; }
        public double Y { get; set; }
        public int LineId { get; set; }
    }
}
