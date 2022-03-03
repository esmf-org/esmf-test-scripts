#!/usr/bin/perl

chdir "/scratch1/NCEPDEV/nems/role.esmfmaint/esmf-test-artifacts";
system("git checkout main");
@gitlines = split(/\n/,`git remote update 2>&1`);
foreach(@gitlines) {
  if($_ =~ /->/) {
    @words = split(/\s+/,$_);
    $branch = @words[2];
    system("git checkout origin/$branch develop/$branch");
    system("git commit -a -m\'Update from $branch\'");
    system("git push origin main");
  }
}

