#!/usr/bin/python

import re
import sys

pat = re.compile('(?P<ip>\d+\.\d+\.\d+\.\d+).*?(?P<hour>(?<=:)\d\d)')
for line in sys.stdin:
    match = pat.search(line)
    if match:
        print '%s\t%s' % (match.group('ip'), match.group('hour'))
