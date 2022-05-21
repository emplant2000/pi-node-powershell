#
# Install chrome extension
#
# https://chrome.google.com/webstore/detail/check-my-public-and-priva/nmhkffmkjbepohgmonlkfoifdbncbgbl
#

# open 31400-31409

netsh -f pinode.netsh


# install chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


# install pinode

choco install pinode -y

