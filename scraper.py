import re
import sys
import fileinput
from HTMLParser import HTMLParser
f = sys.argv[1]
TAG_RE = re.compile(r'<[^>]+>')
count = 0
l1 = []
for line in open(f, 'r'):
    print(re.search("Last update", line))
    if re.search("Last update", line):
        start = '<ul><li>'
        end = '</li></ul>'
        x = (line.split(start))[1].split(end)[0]
        x1 = TAG_RE.sub('', x)
        res = x1.index("Last")
        l1.append(str(x1[res:res+24]))
        count += 1

c_title=0
for line in open(f, 'r'):
    if re.search("title", line):
        c_title += 1
        start = 'title="'
        end = '"'
        x = (line.split(start))[1].split(end)[0]
        x1 = TAG_RE.sub('', x)

if(count == c_title):
    st ="";
    c_list = 0
    l1_c = 0
    for line in fileinput.FileInput(f,inplace=1):
        if 'title=""' in line:
            start = 'title="'
            end = '"'
            x1 = (line.split(start))
            line = line.rstrip()
            line = line.replace(line,(x1[0]+'title="'+l1[l1_c]+x1[1])+"\n")
            l1_c += 1
        print(line)
