### POLOS - Plain Old OSGi Server
This minimal OSGi server contains

* Equinox
* Jetty
* Felix Webconsole

Multifunctional basic OSGi runtime. I use it to bootstrap development on the Raspberry Pi.

### Build

     git clone https://github.com/wimjongman/polos.git
     mvn verify

### Run

Find the product of your choice in directory

     com.weltevree.polos.product\target\products\com.weltevree.polos.product 

### Run on Raspberry

Install Java and unpack the 

     polos-linux.gtk.x86.zip 
     
file into a directory of your choice. 

     chmod a+x pipolos
     ./pipoos
     
### Opening the console

     http://localhost:8888/system/console
     user: admin
     pass: admin

### See Also
Bryan Hunts work @ [https://github.com/BryanHunt/bndtools-equinox-app-kit](https://github.com/BryanHunt/bndtools-equinox-app-kit)
