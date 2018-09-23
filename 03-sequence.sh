wsk package update basics
wsk action update basics/split basics/split.js
wsk action invoke basics/split -p text "the pen is on the table" -r | tee save.json
wsk action update basics/count basics/count.js
wsk action update basics/wordcount --sequence basics/split,basics/count
wsk action invoke basics/count -P save.json -r
wsk action invoke basics/wordcount -r -p text  \ "can you can a can as a canner can can a can"
