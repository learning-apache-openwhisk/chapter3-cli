wsk trigger create basics-interval --feed /whisk.system/alarms/interval --param minutes 1 
wsk rule create basics-interval-alpha basics-interval basics/log-alpha
echo waiting 2 minutes
echo poll logs
sleep 120
wsk rule delete basics-interval-alpha
wsk trigger delete basics-interval