open(INPUT, $ARGV[0]);

$x = 0;

$seqcount = 0;

while(defined($line = <INPUT>))
{
	if ($line =~ m/^>/)
	{
		$x = $x + 1;
	}
	else
	{
		chomp $line;
		$line = s/\*//;
		@array = split("", $line);
		$count = scalar @array;
		$seqcount = $seqcount + $count;
		if ($line =~ m/\*/)
		{
			$seqcount = $seqcount - 1;
		}
	}

}

$mean = $seqcount/$x;

print "There are $x sequence in the file $ARGV[0], with average sequence length $mean.\n";
