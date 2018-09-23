wsk action update basics/log-alpha -p name alpha basics/log.js
wsk action update basics/log-beta -p name beta basics/log.js
wsk action invoke basics/log-alpha 
wsk action invoke basics/log-beta 
wsk activation list --limit 2 
#wsk activation poll --since-seconds 60 --exit 60
wsk trigger create basics-alert
wsk trigger list
wsk trigger get basics-alert
