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

while (my $row = <$fh>) {
	# skip emtpy lines
	$row =~ s/^\s+|\s+$//g;;
	if (! $row) {
		next;
	}
	
	# get fromScanCode & toKey
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
 Send {Blind}{$toKey DownTemp}
return\n\n";

    print
"$extendKey & sc$fromScancode up::
  SetKeyDelay -1
  Send {Blind}{$toKey Up}
return\n\n";
}
