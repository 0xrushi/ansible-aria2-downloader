#!/bin/bash

# Define the input and output file paths
input_file="ip_list.txt"
output_file="hosts2"

# Define the base hostname for the machines
hostname="machine"

# Initialize the counter
counter=1

# Loop through each IP address in the input file
while read ip; do
  # Define the hostname for the current machine
  current_hostname="$hostname$counter"

  # Write the current machine's hostname and IP address to the output file
  echo "$current_hostname ansible_host=$ip ansible_user=ubuntu ansible_ssh_private_key_file=/path/to/key.pem" >> $output_file

  # Increment the counter
  counter=$((counter+1))
done < "$input_file"
