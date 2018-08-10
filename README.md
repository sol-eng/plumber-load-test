# Plumber Load Test

This Plumber API is designed to be used with Plumber Load tests.  It is
configurable in its usage:

- msg - this parameter is a character message that will be returned (echoed)
back in the response
- sleep - this numeric parameter specifies the length of time that the API will
"sleep" or "wait" before returning.  It is improperly named, since it now burns
CPU the whole time it waits
- copies - this numeric parameter (once converted to an integer) specifies how
many times to copy the `msg` in the response.  Increasing this value makes it
easier to force the API into sending large responses.