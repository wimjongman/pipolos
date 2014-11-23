### PIPOLOS - Plain Old OSGi Server for the Raspberry PI    <img style="float: right" src="https://raw.githubusercontent.com/wimjongman/polos/master/pipolos.png" height="50"/>
Incubation kit for building OSGi / Equinox applications.

This minimal OSGi server contains:

* Equinox
* Jetty
* Felix Webconsole

In addition, but can be removed from the build, it contains

* ECF Remote Services
* [ECF Examples for PI](https://github.com/wimjongman/RaspberryPI) 
* [PI4J](https://github.com/Pi4J/pi4j/)

Multifunctional basic OSGi runtime. I use it to bootstrap development on the Raspberry Pi.

### Build

     git clone https://github.com/wimjongman/pipolos.git
     cd pipolos
     mvn verify

### Run

Find the product of your choice in directory

     com.weltevree.pipolos.product\target\products\com.weltevree.pipolos.product 

### Run on Raspberry

Install Java 8 and unpack the 

     pipolos-linux.gtk.x86.zip 
     
file into a directory of your choice. Then

     chmod a+x pipolos.sh
     
to make it executable and run it by

     sudo ./pipolos.sh

On the console prompt you can start and stop the pin bundles that will start and stop the remote services. These services can be discovered by the egg cooking gui.

## Extra Info

### Apache File Install

You can provision new bundles by dropping them in the "load" directory without restarting your server. You can unprovision bundles at runtime by removing them from the "load" directory. For this to work make sure to start the fileinstall bundle first.

### Egg Cooking GUI

An example project that is able to discover the ECF GPIO pin services that run on the Raspberry Pi can be found here

https://github.com/wimjongman/eggclient
     
### Opening the Apache Webconsole

     http://localhost:8888/system/console // replace localhost as needed
     user: admin
     pass: admin

### Related Work
Bryan Hunts work @ [https://github.com/BryanHunt/bndtools-equinox-app-kit](https://github.com/BryanHunt/bndtools-equinox-app-kit) (simmilar idea but not related)
