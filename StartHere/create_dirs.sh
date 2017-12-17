#!/bin/bash
# File: windowsist/StartHere/create_dirs.sh
# Info: Create directories and soft links (shortcuts) to existing directories 
#       to create the directories that usually show up in the Linux home folder

here=$(pwd)     # if you are not in the home folder, let's save where you are
cd ~            # Go to the home folder
mkdir bin       # ~/bin is a special directory for you to run programs you've created without a preceeding './'

# Most of your files on the C drive can be found in /mnt/c.
# We will create the softlinks to go to the directories you are used to.
# NOTE: This will NOT link your OneDrive directories.  Those will be linked differently.
userpath="/mnt/c/Users/$username"
ln -s $userpath WinHome   # See why you should use your Windows username as your Linux username?

# Create your basic shortcuts
# I highly recommend you store your stuff not in the Linux home where it could be lost
for d in Desktop Documents Downloads Music Pictures Videos
  if [ ! -d $userpath/$d ]; then
    ln -s $userpath/$d
  fi
done

# Create shortcuts to any cloud based services you use
# TODO: Watch this next line.
for d in "Google Drive" "Dropbox" "OneDrive"
  if [ ! -d $userpath/$d ]; then
    ln -s $userpath/$d
  fi
done

# Create Folders and Shortcuts to store downloaded Software,
# downloaded Repositories, your repositories which should be in Projects,
# and use a Sandbox to as a place to play around with code
for d in Projects Repositories Sandbox Software
  if [ ! -e $userpath/$d ]; then
    mkdir $usrpath/$d
  fi
  if [ ! -d $userpath/$d ] then
    ln -s $userpath/$d
  fi
done

cd $here      # return to where you were
