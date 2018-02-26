# windowsist
Software Repo and Wiki for Linux users who need to use Windows.

**I RECOMMEND USING WINDOWS 10 FOR THIS PROJECT!**

Windowsist is a software repository and wiki for Linux users who can't bear to part with their Torvaldsian utopia but have to face the fact that they still living in a Windows world.  (It will never be a Mac World so as long as you can't compile your APKs in Android Stuido on a Mac.  But that's for the [Androidist](https://www.github.com/jrcharney/androidist) to deal with, if I every create that project.)

While most people will still use Cygwin, Msys, or remote into a shell using PuTTY to compensate, this repository is designed to take advantage of the new features that Windows 10 has added for using Bash on Ubuntu on Windows.

Windowsist is designed to work with another project called [Linuxist](https://github.com/jrcharney/linuxist) where once you've installed Windowsist, you can then run Linuxist to take care of the Linux parts.

## About this project

There are still some good things to come out of Microsoft.  Generally, I consider Word and Excel the best thing they every made (up until they changed the interface in 2007 where you had to relearn where everything was).  But at some point you will still need to use a Windows machine for something especially since Google has yet to fix that bug where when you export a Google Docs file to a Word Document and the line spacing is all screwed up.

The Windowist repo serves as the home for all things that still need to be bridged between Linux and Windows.

I didn't stop using Windows because of a hate of Microsoft. (OK, maybe it was 40% hate, but the other 60% was when I used open source software Windows would bloat it up like Kristy Alley in fat suit.)  However, things have changed for the better!

I have learned some things over the years on how to use computers better.  And with my ability to explain technology in a way that doesn't try to insult the people who I help, here's yet another place where my generosity and knowledge has a place to shine.

To get started installing Windows Subsystem for Linux, [go to Microsft's website](https://docs.microsoft.com/en-us/windows/wsl/about).

## FAQ

### Do I need to install Cmder/ConEmu?

Short answer: No.

Long answer: Not really. I though about it. I can set it up a task in Cmder/ConEmu.  But is it worth doing? No. It just wraps it inside another layer.  My suggestion would be to use it as a place to do Powershell or CMD stuff.

### Do I need Windows 10 to use this feature?

**YES!** However, you don't need to go out and buy the professional version. You can use Windows 10 Home.

I was rather surpirsed to learn that as of late February 2018, despite [Windows having an 88.78% market share of desktop operating systems](https://netmarketshare.com/operating-system-market-share.aspx?options=%7B%22filter%22%3A%7B%22%24and%22%3A%5B%7B%22deviceType%22%3A%7B%22%24in%22%3A%5B%22Desktop%2Flaptop%22%5D%7D%7D%5D%7D%2C%22dateLabel%22%3A%22Trend%22%2C%22attributes%22%3A%22share%22%2C%22group%22%3A%22platform%22%2C%22sort%22%3A%7B%22share%22%3A-1%7D%2C%22id%22%3A%22platformsDesktop%22%2C%22dateInterval%22%3A%22Monthly%22%2C%22dateStart%22%3A%222017-02%22%2C%22dateEnd%22%3A%222018-01%22%2C%22segments%22%3A%22-1000%22%2C%22plotKeys%22%3A%5B%7B%22platform%22%3A%22Windows%22%7D%5D%7D), [Windows 10 only makes up 28.19% of that share](https://netmarketshare.com/operating-system-market-share.aspx?options=%7B%22filter%22%3A%7B%22%24and%22%3A%5B%7B%22deviceType%22%3A%7B%22%24in%22%3A%5B%22Desktop%2Flaptop%22%5D%7D%7D%5D%7D%2C%22dateLabel%22%3A%22Trend%22%2C%22attributes%22%3A%22share%22%2C%22group%22%3A%22platformVersion%22%2C%22sort%22%3A%7B%22share%22%3A-1%7D%2C%22id%22%3A%22platformsDesktopVersions%22%2C%22dateInterval%22%3A%22Monthly%22%2C%22dateStart%22%3A%222017-02%22%2C%22dateEnd%22%3A%222018-01%22%2C%22segments%22%3A%22-1000%22%2C%22plotKeys%22%3A%5B%7B%22platformVersion%22%3A%22Windows%207%22%7D%2C%7B%22platformVersion%22%3A%22Windows%2010%22%7D%2C%7B%22platformVersion%22%3A%22Windows%20XP%22%7D%2C%7B%22platformVersion%22%3A%22Windows%208.1%22%7D%2C%7B%22platformVersion%22%3A%22Mac%20OS%20X%2010.12%22%7D%5D%7D).  Part of it might be that Windows 7 and 8 users were not keen about being told to upgrade operating systems, which Mac and Linux users happily oblige to do so.  It's probably because of how Windows does the upgrade process, which is about as fun as oral surgery.

### Do I need to to set Windows 10 into Developer Mode to use WSL/Ubuntu?

Not anymore.  While [this link](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) has been a helpful resource, you don't need to go to "Update & Security" in your settings to set the Developer mode anymore. You can simply get by just using "Sideload apps".  Also, it was no fun having to be annoyed every other week about how I should update Windows.

### Should I still install Ubuntu from the Microsoft Store app?

**YES!** You still need to do install Ubuntu (or rather Bash on Ubuntu for Windows (BUW)) to set up the profile according to the WSL Installation instructions.

You must do this **before** you install wsltty.

In terms of a user name, I recommend using the username that is used for your User directory on Windows. For example, if your Windows User Directory is `C:\Users\Jason`, use `Jason` as your user name.  For simplicity, use your Windows login password as your Ubuntu password unless you really want to be secure and use a different password. Just be sure to write it down somewhere so you don't lock yourself out.

### Why do I need WSLTTY if I have Ubuntu from the Microsoft Store?

Because Microsoft's version is needed to set up Ubuntu. [WSLTTY](https://github.com/mintty/wsltty/releases) provides the ability to use the Powerline glyphs (no relation to PowerShell) for Vim and Tmux.  Basically, Microsoft's Ubuntu is basically Bash inside a `conhost.exe` process which is about as good as using `CMD.exe`. (It still sucks.) 

### OK, I downloaded Ubuntu for Windows and WSLTTY. Why does everything look weird?

Did you remember to download and install the [Nerdfonts](http://nerdfonts.com/)?  Assuming that Nerd Fonts hasn't written that Powershell script to download *AND* install the fonts, my repo should provide a script to download and install the Powerline fonts.

Alternatively, you can just download the [Hack font](https://sourcefoundry.org/hack/) which I like to use in WSLTTY.

### Can I download all this using Chocolatey?

Short answer: No.

Long answer: No.  I really though [Chocolatey](https://chocolatey.org/) would have all the up-to-date packages, but much like any other package manager maintained by their distributor (**COUGH**UBUNTU**COUGH**), it seems like there is nobody there to make sure that ALL the packages are up-to-date.

Of course that is not saying "Don't install Chocolatey".  I highly recommend installing Chocolatey. But you need to do it in **PowerShell as an administrator**. (Find the PowerShell icon. Right click on it. Click on "Run as Administrator". Say Yes.)

### Should I use Chocolatey at all?

**Yes, but not for stuff you are going to use in/with Ubuntu.**  For instance, I do not recommend downloading Python or Node for Windows because any other Windows version of the software will install stuff like that multiple times.  The whole point of using Unix/Linux was that resources would be shared, things would be installed **ONCE**, and there would be five different version of Python 2.6 still on your computer the minute some Tech News website announces some exploit to Python 2 (which in 2018, everybody should be using frigging Python 3.5 on up!)

If anything, after you install chocolaty, download any package that offers enhanced functionality for text processing or downloading in the command line like `curl` or `wget`.  I plan on providing a list in a script in this repo later.  It might be a `.ps1` file.

### What about Linux Programs that use Graphical User Interfaces?

Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/) and make sure it is running before you launch anything from it.  I haven't quite figured out how to activate GUI (Graphical User Interface) apps independently from BUW, but I heard that it is possible.  I'd eventually like to do that in lieu of downloading any Windows version of a program if it will conserve disk space.

### I've installed BUW but where are my folders for my Windows User Home?

Great question! Of which there is a great answer to that.  

In any normal Linux installation, Linux would create directories for you to store your files in.  Windows does not do this.  What I do recommend is creating aliases to the directories in your `C:\Users` directory (in my case `C:\Users\Jason`) that point to your directories.  BUW offers a way to access your file on the `C:\` drive by going to `/mnt/c`, which means your Windows home can be accessible through `/mnt/c/Users/Jason` for example.

For convenience, you can create aliases to those directories using the `ln` command.  Rather than create a shortcut for each of the typical directories, which you could, I suggest making one shortcut in your Linux home directory that goes to your Windows home directory, and still creating regular directories that would be used in Linux which could have shortcuts to their windows counterparts.

**HOWEVER**, if you use an alias to your Windows directories, you can not use `chmod`, `chown`, or `chgrp` on those file as they will have no effect on those files because 

Also, if you use programs like PuTTY, KiTTY, or WinSCP and have keys set up for your sessions in those programs, you can not use them.  I will have an article on how to set up SSH keys in the [Linuxist Wiki](https://github.com/jrcharney/linuxist/wiki/) on how create keys.

### OK, what about the opposite, say I wanted to access my Linux User Home. Where is that located?

From my own experience, `/home/Jason` which is where my Linux home directory is, it is located at `C:\Users\Jason\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home\Jason` on Windows.  It would be wise to go to the parent `home` directory, Select your home directory's name (i.e. `Jason`) and pin it to the Quick Access list.  

### What about OneDrive?

OneDrive is Microsoft's solution to cloud storage.  (Cloud storage means you are just storing it on somebody else's computer. In this case it is Microsoft's.)  However, in some cases, you can accidentally put stuff on your OneDrive (like at `C:\Users\Jason\OneDrive`) that you wanted to put on your Windows Home directory (i.e. `C:\Users\Jason`).  I would also recommend making an alias to it on your Linux home directory.

### What about Dropbox/Google Drive/Box/Mega/etc.?

Same deal. Different service.

### What about AWS?

Amazon Web Services (AWS) is on my TODO list. Especially since I want to move my web hosting there later this year.

### I moved stuff into my Linux home directory, but Bash doesn't show it. WTF?

Yeah. That's kind of an oversight by Microsoft. 

You might notice that if you use a program like [WinSCP](https://winscp.net/) to exchange files between another computer that when you put them on your Linux home on Windows, Linux won't recognize the changes.  You will need to close Ubuntu and open it up again.

There is another way around this though.  If you access the remote computer using OpenSSH or [Midnight Commander](https://midnight-commander.org/), it can all be done on the command line. Doing it that way you don't have to close everything to get stuff.  In the Linuxist Wiki, I will explain how to use SSH, SFTP, SCP, and do a crash course of Midnight Commander.

### Should I change Linux files using Windows stuff?

**NO!** [Even Microsoft thinks that is a bad idea.](https://blogs.msdn.microsoft.com/commandline/2016/11/17/do-not-change-linux-files-using-windows-apps-and-tools/) There is good reason NOT to do this.  The most obvious reason is that Windows doesn't have the ability to define the file permissions like Linux can.  It also can't set user or group ownership.  Case in point, how all the folder permission were set to executable.  Secondly, remember eariler when you couldn't see the files you moved from Windows to Linux? That too.

### What license is this all under?
MIT License.

### How are you funding this project Jason?  Don't you have to eat and pay bills?

That's a seriously kind question!  I'm hoping to link up with a Patreon account assuming I make sense of the tax stuff that goes with it.

For now, [you can support me by buying me a Coffee with Ko-Fi!](https://ko-fi.com/jrcharney)

----

Windowist is built using [Vim](http://www.vim.org/), [WSLTTY](https://github.com/mintty/wsltty), [Ubuntu on Windows on Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10), [My Linuxist Project](https://github.com/jrcharney/linuxist) and [Microsoft Windows 10](https://www.microsoft.com/en-us/windows/get-windows-10).
