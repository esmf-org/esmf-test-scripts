#!/usr/bin/perl

chdir "/home/mpotts/esmf-artifacts-merge";
system("git checkout main");
@gitlines = split(/\n/,`git remote update 2>&1`);
#@gitlines[0] = "line is    e4431636389..8eb7cf0f3b6  chianti    -> origin/chianti";
foreach(@gitlines) {
  print("line is $_\n");
  if($_ =~ /->/) {
    @words = split(/\s+/,$_);
    $branch = @words[2];
    print("$branch, @words[3]\n");
    system("git checkout origin/$branch develop/$branch");
    print("checked out $branch\n");
    $message=`git log --format=%B -n 1 origin/$branch | head -n 1`;
    chop($message);
    print("message is $message\n");
    $branchhash =`echo $message |  awk -F \' \' \'{print \$8}\'` ;
    chop($branchhash);
    print("bmessage is $bmessage\n");

    $command="find develop -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"unit test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$2,\$3,\$4,\$6,\$7,\$5,\$12,\$14}\' > unit";
    print("command is $command\n");
    system("$command");
    $command="find develop -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"system test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > sys";
    print("command is $command\n");
    system("$command");
    $command="find develop -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"example test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > examp";
    $command="find develop -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"nuopc test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > nuopc";
    print("command is $command\n");
    system("$command");
    system("echo \"HOST compilier version mpi-type mpi-ver O/g unit-pass unit-fail sys-pass sys-fail ex-pass ex-fail nuopc-p nuopc-f\" > summary");
    system("paste -d \" \" unit sys examp nuopc >> summary");
    system("env LC_COLLATE=C sort summary | column -t > \"develop/$branchhash.summary\"");
    system("git add develop");
    system("git commit -a -m\'$message\'");
    system("git push origin main");
  }
}

