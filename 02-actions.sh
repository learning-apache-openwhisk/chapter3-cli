wsk package update basics
wsk action create basics/now basics/now.js
wsk action invoke basics/now
wsk action invoke basics/now -r
wsk action get basics/now --url
wsk action get basics/now
curl $(wsk action get basics/now --url | tail -1)
wsk action update basics/now --web true
curl $(wsk action get basics/now --url | tail -1)
wsk action list basics
wsk action delete basics/now
wsk action list basics