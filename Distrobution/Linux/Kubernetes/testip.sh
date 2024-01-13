# Ask for the number of LBs
echo "How many Loadbalancers are there?"
read num_lbs

# Loop over the number of LBs
for ((i=1; i<=num_lbs; i++)); do
  # Ask for the IP of the current LB
  echo "Enter the IP of LB $i:"
  read ip_lb
  # Store the IP in a variable with a dynamic name
  declare "IP_LB_$i=$ip_lb"
  # Initialize flag variable
  append_flag=0
done

for ((i=2; i<=num_lbs; i++)); do
  lb_list+=" $ip_lb$i"
done

echo "lb_list: $lb_list"