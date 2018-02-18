## Cellular Test App for resin.io 

This is a simple test application to validate if a cellular modem is working correctly with resin.io. The example has a modified [entry.sh](entry.sh) that disables `udevadm trigger` so that modems do not get replugged during container restart. With this app one should be able to validate the stability of the modem on resin.io without the application container causing adverse side affects.

This APP should work with and without `INITSYSTEM=on`