#!/usr/bin/env perl
# This script is called after running the extenal demos to analyse the results.
# Arrays of results files
@tests_run = ();	# List of tests that were run.
@tests_results = ();	# List of results.
@tests_pass = ();	# List of tests that passed.
@tests_fail = ();	# List of tests that failed.
@tests_skip = ();	# List of tests that were skipped.

	$pass_count = 0;
	$fail_count = 0;
	$skip_count = 0;
	$test_count = 0;
	#open the RegridWeightGenCheck.Log file.
	$ok=open(F,"RegridWeightGenCheck.Log");
	if (!(defined $ok)) {
                print "\n\n";
                print "No external tests were found\n\n";
		# Write test results to be read by regression tests scripts.
                open(MYHANDLE, "<$results_file");
                print MYHANDLE "PASS $pass_count FAIL $fail_count SKIP $skip_count\n";
        }
	else {
		# The file exists, continue reading it
		# Get the list of tests_run and test_results by finding the strings.
		$test_list_string = 0;
		$test_results_string = 0;

		foreach $line (<F>){
        	  	push(file_lines, $line);
			$list_found=grep(/Tests to be run:/, @file_lines);
			if ($list_found == 1){
				$test_list_string = 1;
			}
			$results_found=grep(/Test or Dryrun Results:/, @file_lines);
                        if ($results_found == 1){
				$test_results_string = 1;
                                $test_list_string = 0;
                        }
			if ( $test_results_string == 1 ) {
                               	push (tests_results , $line);
			}
			if ( $test_list_string == 1 ) {
				push (tests_run , $line);
			}
		}
		#Remove the first line of arrays
		shift @tests_run;
		pop @tests_run;
		shift @tests_results;
		#Save a copy of the tests_run array
		@cat_tests = @tests_run;
		# Count the number of tests
		$test_count = @tests_run;
		# Find the test that passed in the tests_results list
		$pass_count = 0;
		$fail_count = 0;
		$skip_count = 0;
		foreach $test (@tests_results) {
			$pass = grep ( /PASSED/, $test);
			if ( $pass == 1 ) {
				push ( tests_pass , $test);
				$pass_count = $pass_count + 1;
			}
			$skip = grep ( /SKIPPED/, $test);
                        if ( $skip == 1 ) {
                                push ( tests_skip , $test);
                                $skip_count = $skip_count + 1;
                        }
		}
		# Strip the name from the test_passed list
		if ($pass_count !=0) {
			foreach (@tests_pass){
				# remove all white spaces
				s/ //g;
				($test_string,$other) = split(/.out/,$_);
				push (pass_list, "$test_string\n");
			}
        		#Find the tests that passed in $test_run to determine what tests failed
                        foreach $test (@pass_list) {
                                foreach (@tests_run){
                                        s/$test//s;
                                }
                        }
                }
                if ($skip_count !=0) {
                        foreach (@tests_skip){
                                # remove all white spaces
                                s/ //g;
                                ($test_string,$other) = split(/.out/,$_);
                                push (skip_list, "$test_string\n");
                        }
	
			#Find the tests that were skipped in $test_run to determine what tests failed
			foreach $test (@skip_list) {
				foreach (@tests_run){
					s/$test//s;
				}
			}
		}
		
		$fail_count = $test_count - ($pass_count + $skip_count);
		chomp($fail_count);

		if ($pass_count !=0){
			print "\n\nThe following tests pass: \n";
			print @pass_list;
		}
		if ($fail_count != 0){
			print "\n\nThe following tests fail: \n";
			print @tests_run;
		}
                if ($skip_count != 0){
                        print "\n\nThe following tests were skipped: \n";
                        print @skip_list;
                }
		if ($skip_count != 0){
			print "\nFound $test_count external tests, $pass_count pass, $fail_count fail and $skip_count skipped.\n";
		}else {
			print "\nFound $test_count external tests, $pass_count pass and $fail_count fail.\n";
		}
		$results_file="ext_tests_results";
        	open(MYHANDLE, ">$results_file");
        	print MYHANDLE "PASSED $pass_count FAILED $fail_count SKIPPED $skip_count\n";

		# cat out the test files
		print "\n The following are the output files of the external tests. \n\n";
		print "\n\n";
		print "----------------------------------------------------------\n\n\n\n";
		foreach $file (@cat_tests) {
			chop $file;
			$handle = "$file.out";
			print "$handle\n\n";
			open (test, "<$handle") || print "Cannot open $handle: $!\n\n";
			@lines = <test>;
			print @lines;
			print "\n\n";
			print "----------------------------------------------------------\n";
			print "\n\n\n";
		}

	}



