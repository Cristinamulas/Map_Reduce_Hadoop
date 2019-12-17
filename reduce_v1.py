#!/usr/bin/python

from operator import itemgetter
from collections import Counter
import sys

dict_ip_count = {}

for line in sys.stdin:
	line = line.strip()
	ip, hour = line.split('\t')
	if hour not in dict_ip_count:
		dict_ip_count[hour] = [ip]
	else:
		dict_ip_count[hour].append(ip)

for key, value in dict_ip_count.items():
	ip_with_counts = Counter(dict_ip_count[key])
	sorted_ip_with_counts = sorted(ip_with_counts.items(), key=itemgetter(1), reverse=True)
	dict_ip_count[key] = sorted_ip_with_counts
	print((key + ':00'), dict_ip_count[key][:3])
