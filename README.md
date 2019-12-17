### Map_Reduce_Hadoop

- Mapper: Use regular expression to capture the ip address and hour from the log file. Output the results using print command, this will be the input for the reducer.

- Reducer: Using the input from the mapper we are going to create a dictionary where the key is the hour and the values are all the ip addresses that happen during that hour. For this we will have to split the inputs correctly and assign them to the variables of key and hour respectively. Once we have the dictionary created we will use the “Counter” function to count the number of ip addresses for each hour and output the top 3 occurrences.
