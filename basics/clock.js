var dt = require("./lib/datetime.js")

function main(args) { 
    let now = args.millis ? new Date(args.millis) : new Date()
    let res = " "
    if(args.date)
      res = dt.fmtDate(now) + res
    if(args.time)
      res = res + dt.fmtTime(now)
    return {     
      body: res
    }
  }
  
  exports.main = main