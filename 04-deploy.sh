cd basics
echo '{"main":"clock.js"}' >package.json
zip -r clock.zip clock.js package.json lib 
wsk action update basics/clock clock.zip --kind nodejs:6 
wsk action invoke basics/clock -p date true -r
wsk action invoke basics/clock -p time true -r