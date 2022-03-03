#!/usr/bin/perl

chdir "/scratch1/NCEPDEV/stmp2/role.esmfmaint/esmf-artifacts-merge";
system("git checkout main");
if(@ARGV > 0) {
  $branch_name = @ARGV[0];
} else {
  $branch_name = "develop";
}
if(@ARGV > 1) {
  $pull_all = @ARGV[1];
} else {
  $pull_all = 0;
}
print("HEY branchname is $branch_name\n");
@gitlines = split(/\n/,`git remote update 2>&1`);
if($pull_all == 1) {
  @gitlines[0] = "line is    cheyenne        -> origin/cheyenne";
  @gitlines[1] = "line is    hera            -> origin/hera";
  @gitlines[2] = "line is    orion           -> origin/orion";
  @gitlines[3] = "line is    jet             -> origin/jet";
  @gitlines[4] = "line is    gaea            -> origin/gaea";
  @gitlines[5] = "line is    discover        -> origin/discover";
  @gitlines[6] = "line is    chianti         -> origin/chianti";
  @gitlines[7] = "line is    acorn           -> origin/acorn";
}
foreach(@gitlines) {
  print("line is $_\n");
  if($_ =~ /->/) {
    @words = split(/origin\//,$_);
    @newwords = split(/\s+/,@words[1]); 
    $branch = @newwords[0];
    print("$branch, @words[0]\n");
    system("git checkout origin/$branch $branch_name/$branch");
    print("checked out $branch\n");
    $message=`git log --format=%B origin/$branch | grep $branch_name | head -n 1`;
    chop($message);
    print("message is $message\n");
    $branchhash =`echo $message |  awk -F \' \' \'{print \$8}\'` ;
    chop($branchhash);
    print("bmessage is $bmessage\n");

    $command="find $branch_name -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"unit test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$2,\$3,\$4,\$6,\$7,\$5,\$12,\$14}\' > unit";
    print("command is $command\n");
    system("$command");
    $command="find $branch_name -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"system test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > sys";
    print("command is $command\n");
    system("$command");
    $command="find $branch_name -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"example test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > examp";
    print("command is $command\n");
    system("$command");
    $command="find $branch_name -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep \"nuopc test results\" | sed \'s/\\// /g\'  | sed -e \'s/\\t/ /g\' | sed -e \'s/ \\+/ /g\' | sed -e \'s/mpiuni/mpiuni none/g\' | awk -F \" \" \'{print \$12,\$14}\' > nuopc";
    print("command is $command\n");
    system("$command");
    $command="find $branch_name -iname summary.dat  | xargs grep -l \"hash = $branchhash\" | xargs grep esmf_os | awk -F \": \" \'{print \$2}\' > os";
    print("command is $command\n");
    system("$command");
    print("HEY branchname is $branch_name\n");
    system("echo \"OS HOST compilier version mpi-type mpi-ver O/g unit-pass unit-fail sys-pass sys-fail ex-pass ex-fail nuopc-p nuopc-f\" > summary");
    system("paste -d \" \" os unit sys examp nuopc >> summary");
    system("env LC_COLLATE=C sort -k 2,2 summary | column -t > \"$branch_name/$branchhash.summary\"");
    system("git add $branch_name");
    system("git commit -a -m\'$message\'");
    system("git push origin main");
  }
}

