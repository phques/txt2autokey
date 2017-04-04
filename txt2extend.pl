use strict;
use warnings;
# Read extend keys def and output to autokey hotkeys:
#
# CapsLock
# j|024::Left
# l|026::Right
#
# 1st line is extend key
# and j|024::Left is letter 'j' / scancode 024 (3 digits hex !) maps to Left arrow
# the letter is for human ref on Qwerty kbd only, we will use the scancode

my $filename = $ARGV[0];
open(my $fh, '<:encoding(UTF-8)', $filename)
	or die "Could not open file '$filename' $!";
 
my $extendKey = <$fh>;
chomp $extendKey;

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
	
	# print "from $fromScancode, to $toKey\n";

	# print output
	print 
";; $fromKey => $toKey
CapsLock & sc$fromScancode\::
 SetKeyDelay -1
 Send {Blind}{$toKey DownTemp}
return\n\n";

    print
"CapsLock & sc$fromScancode up::
  SetKeyDelay -1
  Send {Blind}{$toKey Up}
return\n\n";
}
