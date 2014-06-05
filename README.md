### POLOS - Plain Old OSGi Server         <img style="float: right" src="https://raw.githubusercontent.com/wimjongman/polos/master/polos.png" height="50"/>
Incubation kit for building OSGi / Equinox applications.

This minimal OSGi server contains:

* Equinox
* Jetty
* Felix Webconsole

Multifunctional basic OSGi runtime. I use it to bootstrap development on the Raspberry Pi.

### Build

     git clone https://github.com/wimjongman/polos.git
     cd polos
     mvn verify

### Run

Find the product of your choice in directory

     com.weltevree.polos.product\target\products\com.weltevree.polos.product 

### Run on Raspberry

Install Java and unpack the 

     polos-linux.gtk.x86.zip 
     
file into a directory of your choice. Then

     chmod a+x pipolos
     
to make it executable and run it by

     ./pipolos
     
### Opening the console

     http://localhost:8888/system/console // replace localhost as needed
     user: admin
     pass: admin

### See Also
Bryan Hunts work @ [https://github.com/BryanHunt/bndtools-equinox-app-kit](https://github.com/BryanHunt/bndtools-equinox-app-kit)
