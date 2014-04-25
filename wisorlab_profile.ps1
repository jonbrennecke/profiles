# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Just a simple PowerShell script to get things started
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo " >> Welcome. Let's initialize the git repo"

echo " >> checking if 'git' is installed"

# if git isn't installed...
if ( ! ( Get-Command "git" -ErrorAction SilentlyContinue ) ) {
    
    # location of git on TDT#4
    if ( Test-Path 'C:\Users\brennecke.jonathan\AppData\Local\GitHub\PortableGit_054f2e797ebafd44a30203088cd3d58663c627ef\bin\git.exe' ) {
        Set-Alias git 'C:\Users\brennecke.jonathan\AppData\Local\GitHub\PortableGit_054f2e797ebafd44a30203088cd3d58663c627ef\bin\git.exe'
    }

    # location of git on ULTRAROSS
    elseif ( Test-Path 'C:\Users\wisorlab\AppData\Local\GitHub\PortableGit_054f2e797ebafd44a30203088cd3d58663c627ef\bin\git.exe' ) {
        
    }

    # finally, just give up and install git
    else {

        echo " >> Couldn't find 'git'. Downloading it from the internet..."

        # download Posh-Git from psget.net and run installer
        (new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

        install-module posh-git 

    }

}

# git ought to be installed by this point
echo " >> Success!"

# clone rempe's working directory
git clone wisorlab:Epoch-Based-Processing

cd Epoch-Based-Processing

# switch to rempe's branch
git checkout mrempe



# let's do a few other things...


# set 'subl' as an alias to Sublime Text
Set-Alias subl 'C:\Program Files\Sublime Text 3\sublime_text.exe'

# alias for python
Set-Alias python 'C:\Python27\python.exe'

# alias for emacs
Set-Alias emacs 'C:\Users\wisorlab\Documents\MATLAB\mrempe\emacs\bin\emacs.exe'
