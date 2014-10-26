This Docker image is based on dockerfile/ubuntu-desktop to provide a GUI desktop
for running the BLLIP parser's NLTK + X11/TK parsing shell.  It starts up in CLI
mode though for those who don't want the GUI.

The home for this Dockerfile is: 
	https://github.com/jimwhite/dockerfiles/tree/master/bllip-parser/python
	
Start me with:
 	docker run -it --rm -p 5901:5901 jimwhite/bllip-python

Then at the prompt you can start VNC if you want graphics:
	./runvnc.sh

That will prompt you for a password and start up the VNC server.

On a Mac you can use the builtin VNC client using open:
 	open vnc://192.168.59.103:5901

That (192.168.59.103) is the default VirtualBox IP address.  You can display it with this command:
	boot2docker ip
