#!/bin/sh
/Lab1_5950/start.sh
/usr/local/hadoop/bin/hdfs dfs -rm -r /logstat/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /logstat/output/
/usr/local/hadoop/bin/hdfs dfs -mkdir -p /logstat/input/
/usr/local/hadoop/bin/hdfs dfs -copyFromLocal /Lab1_5950/log_test1.txt /logstat/input/
/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.9.2.jar \
-file /Lab1_5950/map_v1.py -mapper /Lab1_5950/map_v1.py \
-file /Lab1_5950/reduce_v1.py -reducer /Lab1_5950/reduce_v1.py \
-input /logstat/input/* -output /logstat/output/
/usr/local/hadoop/bin/hdfs dfs -cat /logstat/output/part-00000
/usr/local/hadoop/bin/hdfs dfs -rm -r /logstat/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /logstat/output/
/Lab1_5950/stop.sh
