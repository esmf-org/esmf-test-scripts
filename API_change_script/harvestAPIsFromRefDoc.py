#!/usr/bin/env python

###############################################################################
#
#  Harvest the APIs from the html version of the reference manual
#
###############################################################################

def gather_source_files(esmfdir):
    import os

    DIR = 'doc/ESMF_refdoc'
    REFDOCDIR = esmfdir + DIR

    if not os.path.exists(REFDOCDIR):
        print "Directory: " + REFDOCDIR + " was not found.  DING!"
        sys.exit()

    # have to get the files i want to search (all node*.html)
    files = []
    for file in os.listdir(REFDOCDIR):
        if 'node' in file:
            addfile = (REFDOCDIR + '/' + file)
            files.append(addfile)
    files.remove(REFDOCDIR + '/' + 'footnode.html')
    files.remove(REFDOCDIR + '/' + 'node1.html')
    files.remove(REFDOCDIR + '/' + 'node2.html')
    files.remove(REFDOCDIR + '/' + 'node3.html')

    # sort list and move 10 to after 9
    files.sort()
    files.append(files.pop(0))

    return files

def harvest_APIs_dryrun(esmfdir, tag):
    import os

    files = gather_source_files(esmfdir)
    TAGDIR = tag+"_data"
    os.system('mkdir '+TAGDIR)
    for f in files:
        os.system('cp '+f+' '+TAGDIR)

# esmfdir - the directory of the esmf version from which you want to gather APIs
# outputfile - file name of place you want your APIs to appear
# intent of this routine is to harvest the ESMF Fortran APIs from the html version
# of the reference manual and put them in a file for text based searches (grep)
def harvest_APIs(esmfdir, outputfile):
    import re

    OUTFILE = open(outputfile, "w")

    START = 'INTERFACE'
    END = ['ARGUMENTS', 'RETURN VALUE', 'PARAMETERS', 'DESCRIPTION']
    END_WITHARGS = 'DESCRIPTION'

    files = gather_source_files(esmfdir)

    writeline = ""
    # write all lines between START and END
    for f in files:
        flag = False
        file = open(f)

        for line in file:
            # this is END for no arguments
            #if any(enditer in line for enditer in END):
            # this is END for with arguments
            if 'DESCRIPTION' in line:
                if flag:
                    OUTFILE.write("\n")
                flag = False
            # write the line
            if flag:
                OUTFILE.write(writeline+" "+line)
            # get the section number
            if re.search("\..*\..* ESMF.* - ",line) != None:
                writeline = line.split(" ")[0]
            # this is START
            if START in line:
                flag = True

    OUTFILE.close()

