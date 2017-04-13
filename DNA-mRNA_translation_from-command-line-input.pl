
# Transcribing DNA into mRNA

# The DNA input
$DNA = <STDIN> ;

# Transcribe the DNA to RNA by substituting all T's with U's.
$RNA = $DNA;
$RNA =~ tr/tacg/augc/;
$RNA =~ tr/TACG/AUGC/;
$RNA = reverse $RNA;

# Print the RNA onto the screen
print "Here is your DNA sequence:\n";
print "$DNA\n";
print "Here is the result of transcribing the DNA to mRNA: ";
print "$RNA\n\n\n";

# Exit the program.
exit;
