#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)

#* @apiTitle Plumber Example API

#* Wait 0.2 seconds and then echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    Sys.sleep(0.2)
    list(msg = paste0("The message is: '", msg, "'"))
}

