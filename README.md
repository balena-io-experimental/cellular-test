## Cellular Test App for resin.io 

This is a simple test application to validate if a cellular modem is working correctly with a resin.io device. The example has a modified makes use of the new `UDEV` environment variable included in newer versions of resin.io base images. The `UDEV` variable disables `udevadm trigger` in the container so that modems do not get replugged during container restart, which often causes modem instability or failure.

With this app one should be able to validate the stability of the modem on resin.io without the application container causing adverse side affects.

This APP should work with or without `INITSYSTEM=on`.

The `src` folder found in `/usr/src/app` in the container also include a python script to run a speedtest on the device.