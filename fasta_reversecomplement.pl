open(INPUT, $ARGV[0]);
open(OUTPUT, ">$ARGV[1]");

$x = 0;
$seqcount = 0;

$defline = ();

while(defined($line = <INPUT>))
{
	if ($line =~ m/^>/)
	{
		$seq =~ tr/acgt/tgca/;
		$seq =~ tr/ACGT/TGCA/;
		$seq = reverse $seq;
		if (defline ne "")
		{
			print  OUTPUT "$defline$seq\n"
		}
		$seq = ();
		$defline = $line;
	}
	else
	{
		chomp $line;
		$seq = $seq.$line;
		
	}

}

$seq =~ tr/acgt/tgca/;
$seq =~ tr/ACGT/TGCA/;
$seq = reverse $x;
print OUTPUT "$defline$seq\n"
