library(plumber)

#* @apiTitle Plumber Load Test API

#* Wait a configurable number of seconds and then echo back the input,
#* copied a configurable number of times
#*
#* @param msg:character The message to echo
#* @param sleep:numeric The length of time to sleep (in seconds) (default 0.2)
#* @param copies:numeric The number of times to copy the message (default 1)
#* @response 500 Bad Inputs
#* @response 200 Echoed text with configurable wait and copies
#* @get /echo
load_func <- function(msg = "", sleep = 0.2, copies = 1) {
   
  start <- Sys.time()
  counter <- 0
  message("starting counting")
  while (as.double(Sys.time() - start) < sleep) {
    counter <- counter + 1
  }
  message("done counting")
  list(msg = paste0("The message is: '", 
                    paste(rep(msg, as.integer(copies)), collapse = " ")
                    , "'")
       , copies = copies
       , sleep = sleep
       , count = paste0("I counted to ",counter))
}

