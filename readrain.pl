
use Device::SerialPort;
my $port = Device::SerialPort->new("/dev/serial/by-path/pci-0000:00:1d.2-usb-0:2.4:1.0-port0");

$port->baudrate(9600);
$port->databits(8);
$port->parity("none");
$port->stopbits(1);
$port->lookclear;

sleep(10); # whilst the arduino reboots! grrrrrr,....

while (1) {
    $port->write("C");
    my $gotit = "";
until ("" ne $gotit) {
    $gotit = $port->lookfor();       # poll until data ready
    die "Aborted without match\n" unless (defined $gotit);
    sleep 1;                          # polling sample time
}
        #print "Received: $gotit \n";
        @data = split( ',' , $gotit );
        #print  "$data[0]\n" ;
        #print  "$data[8]\n" ;

        system ("rrdtool update /home/simon/shedometry/rain.rrd N:$data[0]:$data[8]");
        system ("echo -n $data[0], >> rain.csv");
        system ("date +%s >> rain.csv");
    $port->lookclear; # needed to prevent blocking
    sleep (300); # every 5 minutes.




}
