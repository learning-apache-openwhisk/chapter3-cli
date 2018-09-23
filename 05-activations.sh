wsk action create basics/echo echo.js
wsk action invoke basics/echo -p hello world
ID=$(wsk action invoke basics/echo -p hello world | awk '{ print $6}')
wsk activation result $ID
wsk activation logs $ID
wsk activation list --limit 4