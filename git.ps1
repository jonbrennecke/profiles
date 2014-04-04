# 

# download Posh-Git from psget.net and run installer
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

install-module posh-git 