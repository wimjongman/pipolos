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

Install Java and unpack the 

     pipolos-linux.gtk.x86.zip 
     
file into a directory of your choice. Then

     chmod a+x pipolos
     
to make it executable and run it by

     ./pipolos
     
### Opening the Apache Webconsole

     http://localhost:8888/system/console // replace localhost as needed
     user: admin
     pass: admin

### See Also
Bryan Hunts work @ [https://github.com/BryanHunt/bndtools-equinox-app-kit](https://github.com/BryanHunt/bndtools-equinox-app-kit) (simmilar idea but not related)
