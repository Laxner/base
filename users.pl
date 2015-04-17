#!/usr/bin/perl

print "Adding Users:\n";

open(IN,"<users");

while (my $line=<IN>)
{
if ($line =~ m/(\S+):(\S+\s\S+):(\d+):(\S+)/)
{
system("adduser -c \"$2\" -u $3 -p $4 $1");
system("echo \"$1	ALL=(ALL)	NOPASSWD: ALL\" >/etc/sudoers.d/$1");
system("chmod 0400 /etc/sudoers.d/$1");
}
}
close IN;
