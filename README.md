### POOS - Plain Old OSGi Server
This minimal OSGi server contains

* Equinox
* Jetty
* Felix Webconsole

I use it to bootstrap development on the Raspberry Pi.

### Build

     git clone 
     mvn verify

### Run

Find the product of your choice in directory

     com.weltevree.poos.product\target\products\com.weltevree.poos.product 

### Run on Raspberry

Install Java and unpack the 

     poos-linux.gtk.x86.zip 
     
file into a directory of your choice. 

     chmod a+x pipoos
     ./pipoos
     
### Opening the console

     http://localhost:8888/system/console
