wsk trigger create basics-alert
wsk trigger list
wsk trigger get basics-alert
wsk rule create basics-alert-alpha basics-alert basics/log-alpha
ID=$(wsk trigger fire basics-alert | awk '{print $6}')
ID2=$(wsk activation logs $ID | jq -r .activationId)
wsk activation logs $ID2
wsk rule create basics-alert-beta basics-alert basics/log-beta
wsk trigger fire basics-alert
wsk rule disable basics-alert-alpha
wsk rule enable basics-alert-beta
wsk rule list
wsk trigger fire basics-alert
wsk rule delete basics-alert-alpha
wsk rule delete basics-alert-beta
wsk trigger delete basics-alert