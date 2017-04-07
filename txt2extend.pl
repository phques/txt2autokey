use strict;
use warnings;

# Read extend keys def and output to autokey hotkeys, cf Extend-Notes.txt

my $filename = $ARGV[0];
open(my $fh, '<:encoding(UTF-8)', $filename)
	or die "Could not open file '$filename' $!";
 
my $extendKey = <$fh>;
$extendKey =~ s/^\s+|\s+$//g;

print ";;Generated from $filename\n";
print ";; extend key is $extendKey\n\n";

my $blind = "{Blind}";
if ($extendKey =~ /alt/i) {
	print ";; # WARNING, using Alt as an extend key usually does not work with Send {Blind}\n";
	print ";; # Send Blind will not be used\n\n";
	$blind = "";
}

while (my $row = <$fh>) {
	# skip emtpy lines
	$row =~ s/^\s+|\s+$//g;;
	if (! $row) {
		next;
	}
	
	# get fromScanCode & toKey (letter|scanCode::toKey)
	my ($from, $toKey) = split /::/, $row;
	my ($fromKey, $fromScancode) = split /\|/, $from;
	$fromKey =~ s/^\s+|\s+$//g;
	$fromScancode =~ s/^\s+|\s+$//g;
	$toKey =~ s/^\s+|\s+$//g;;
	
	# print output
	print 
";; $fromKey => $toKey
$extendKey & sc$fromScancode\::
 SetKeyDelay -1
 Send $blind\{$toKey DownTemp}
return\n\n";

    print
"$extendKey & sc$fromScancode up::
  SetKeyDelay -1
  Send $blind\{$toKey Up}
return\n\n";
}
