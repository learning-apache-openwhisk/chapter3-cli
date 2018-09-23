wsk trigger create basics-interval --feed /whisk.system/alarms/interval --param minutes 1 
wsk rule create interval-alpha basics-interval basics/log-alpha
wsk rule delete interval-alpha
wsk trigger delete basics-interval