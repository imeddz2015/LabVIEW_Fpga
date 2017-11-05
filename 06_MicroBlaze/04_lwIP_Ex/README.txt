I had to implement this example using a CLIP because...

The IP Integration Node forces you to create a simulation model, or so I think.  And that
is limited by LabVIEW in that LabVIEW is only capable of using the 32 bit version of xelab.exe,
and the 32 bit version of xelab uses more than 4gb of ram while attempting to create the model, 
and xelab.exe crashes when it reaches the 4gb mark.  I am in the process of opening a support
ticket with National Instruments, perhaps they can show me how to work around this.  But for now,
you can use a CLIP node in its place.