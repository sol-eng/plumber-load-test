library(plumber)

#* @apiTitle Plumber Load Test API

#* Wait 0.2 seconds and then echo back the input
#* @param msg The message to echo
#* @param sleep The length of time to sleep (in seconds)
#* @get /echo
load_func <- function(msg = "", sleep = 0.2) {
   
  start <- Sys.time()
  counter <- 0
  while (as.double(Sys.time() - start) < sleep) {
    counter <- counter + 1
  }
  list(msg = paste0("The message is: '", msg, "'.  I counted to ",counter))
}

