# clamav-container
Container with preinstalled clamav daeomon. 
Listens on tcp port 3310

When the container starts it 
1. Updatess the virus definitinos
2. Fires of a background process that runs freshclam and sends a SIGUSR2 to clamd every 28800 seconds 
3. Starts clamd.  

it should be noted that Clamd will not start until the initial virus DB update is done, so there will be some startup delay.
