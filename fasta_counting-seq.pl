open(INPUT, $ARGV[0]);

$x = 0;

while(defined($line = <INPUT>))
{
	if ($line =~ m/^>/)
	{
		$x = $x + 1;
	}

}

print "There are $x sequence in the file $ARGV[0]\n";
