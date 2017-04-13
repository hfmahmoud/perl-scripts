opendir(FOLDER, $ARGV[0]);
@files = grep(!/^\.\.?/, readdir(FOLDER));

foreach $file (@files)
{
	print "Processing $ARGV[0]/$file\n";
	open(INPUT, "$ARGV[0]/$file");
	$out = $file;
	$out =~ s/\.ffn$/\_rc\.fnn/;
	open(OUTPUT, ">$ARGV[0]/$out");
	
	$x = 0;
	$seqcount = 0;
	$defline = ();

	while(defined($line = <INPUT>))
	{
		if ($line =~ m/^>/)
		{
			$seq =~ tr/acgt/tgca/;
			$seq = reverse $seq;
			if (defline ne "")
			{
				print OUTPUT "$defline/$seq\n"
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
$seq = reverse $x;
print OUTPUT "$defline$seq\n"
}
	
