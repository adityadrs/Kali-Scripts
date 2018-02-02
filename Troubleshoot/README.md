# Errors that I faced while working around Kali 2017.3
 - [Nvidia](#nvidia)
 - [Pulseaudio](##pulseaudio)



## Nvidia

nouveau driver issue or nouveau fifo error or nouveau error

Solution as suggested at official [documentation](https://docs.kali.org/general-use/install-nvidia-drivers-on-kali-linux)

### Result :
 - Driver did not install and the display stopped working intirely.

### Solution

 - Remove all the installed drivers/addons from nvidia and reinstall GDM3 or any other display manager

 ```sh
    $ apt-get purge "nvidia-*"
    $ reboot
    $ apt-get install gdm3
``` 

After this GUI started to work normally

## Pulseaudio
### Reason 
 - When connecting to a bluetooth speaker/headset, the output configuration profile can not be changed to High Fidelity Playback (A2DP Sink)


 ```sh
 $ sudo rmmod btusb ; sudo modprobe btusb
```
In Kali you are usually the root user, so the "sudo" isn't actually required

what this does is reloads the btsub in the kernel so that it can take a new value of the configuration profile.


## Device information
	
	Manufacturer 		:       Lenovo
	Model 				:       Lenovo Y510P
	CPU 				:       Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz [details](info/CPU.info.txt)
	Memory (RAM) 		:       8 GB
	Storage 			:       1 TB (kali | HDD) + 500GB (Windows | HDD) 

