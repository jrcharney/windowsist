# NOTES

NOTE: This list will grow over time.

## Save some space, use Open Source!
Windows uses [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10), a new alternative to using things like Cygwin. Despite not being a fan of a lot of Micro$oft's stuff over the years, this is actually something that is good.  However, if you do use it (which I highly recommend), you might notice you can't use certain things like [NerdFonts](http://nerdfonts.com/) glyphs, which if you want to use those (which I highly recommend), you should install [WSLTTY](https://github.com/mintty/wsltty) and another project I'm working on called [Linuxist](https://github.com/jrcharney/linuxist).

Install all that Open Source software that is for Windows as Linux software (using the Linux install methods) rather than install the Windows stuff which will install Python like 4 different times on your PC.  Do it once and done!  This is also ideal for software development.

## Using Octave, or any thing graphical.

If you are using [GNU Octave](https://www.gnu.org/software/octave/) instead of MATLAB, you need to do a few things.

First, I suggest downloading [VcXsrv](https://sourceforge.net/projects/vcxsrv/).

Second, to avoid gettint this message

```
libGL error: No matching fbConfigs or visuals found
libGL error: failed to load driver: swrast
```

Open the shortcut to VcXsrv (which you should put a shortcut in you Start menu for), and change the `-wgl` attribute in the Target field to `-nowgl`.


## Sources
* [VCXSrv.0](https://gist.github.com/stowler/9921780) by @stowler
