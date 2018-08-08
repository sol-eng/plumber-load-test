library(plumber)

#* @apiTitle Plumber Load Test API

#* Wait 0.2 seconds and then echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    Sys.sleep(0.2)
    list(msg = paste0("The message is: '", msg, "'"))
}

