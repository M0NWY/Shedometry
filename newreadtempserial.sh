#!/usr/bin/perl -w

# Reads data from my temperature sensors...

use strict;
use warnings;
use Device::SerialPort qw( :PARAM :STAT 0.07 );
my @romslist = (
"28 FF 10 98 B2 16 5 43" ,
"28 FF 78 55 B3 16 4 3D" ,
"28 FF C4 62 B3 16 3 1E" ,
"28 FF BE 5B B3 16 3 15" ,
"28 FF 83 50 B3 16 3 E9" ,
"28 FF 9B 61 B3 16 3 6C");
my @data;
my @outarray = ();

my $rom = '';
my $temp = '';
my $string;

my $PORT = "/dev/serial/by-path/pci-0000:00:1d.3-usb-0:1:1.0-port0";

my $ob = Device::SerialPort->new($PORT);
$ob->baudrate(9600);
$ob->write_settings;

open(SERIAL, "+>$PORT");

 while (my $line = <SERIAL>) {
    if ($line =~ m/(?<=ROM\s=\s)(.*$)/) {
       $rom = $1;
       chop($rom);
       $string .= $rom;
       $string .= ",";

    }
    if ($line =~ m/(?<=Temperature\s=\s)(.*)(\sCelsius)/){
       $temp = $1;

      

       $string .= $temp;
       $string .= ",";

    }

    if ($line =~ m/No\smore\saddresses./){
    
     my @data = split(',', $string );
my $track = 0;

   for ( my $i = 0; $i <= 5; $i++) {
     if ( grep( /^$romslist[$i]$/, @data ) ) {
       $outarray[$i] = $data[( ($track * 2) +1 )];
       $track++;
     } else {
       $outarray[$i] = "U" ;
     }
  }
#print "data:\n";
#print @data;
#print "\n";
#print "out:\n";
#print @outarray;
#print "\n";

my $allsensorsok = 1;
my $hotoutsideflag = 0;

for (my $o = 0; $o <= 5; $o++ ){
	if ($outarray[$o] eq "U") {
		$allsensorsok = 0;
		}
	}
# code for not running my vent fan if it's hotter outside than inside.
if ($allsensorsok == 1){
for (my $o = 0; $o <= 4; $o++ ){
	if ($outarray[5] > ( $outarray[$o] - 1 )) {
		$hotoutsideflag = 1 ;
		}
	}
}

if ($hotoutsideflag == 1){
	system ("lynx -dump http://192.168.1.49/control?cmd=event,T0 > /dev/null"); # disable fan
}else{
	system ("lynx -dump http://192.168.1.49/control?cmd=event,T1 > /dev/null");  # enable fan
}

system ("rm /dev/shm/temptemp");
foreach ( @data ) {
	system ("echo $_ >> /dev/shm/temptemp");
	}
system ("cat /dev/shm/temptemp | paste - - > /dev/shm/temp");


#     system ("echo $string > /dev/shm/temp");
   
     system ("rrdtool update /home/simon/shedometry/temp.rrd N:$outarray[2]:$outarray[0]:$outarray[3]:$outarray[4]:$outarray[1]:$outarray[5]");
     system ("echo $outarray[4] > /dev/shm/temp5");
$string = "";
@data = ();
@outarray = ();

     }

 }
