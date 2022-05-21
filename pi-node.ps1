#
# Install chrome extension
#
# https://bit.ly/pinodeipv4
#

# open 31400-31409

netsh -f pinode.netsh


# Enviroment

wsl --install -d Ubuntu

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /nable-feature /featurename:VirtualMachinePlatform /all

wsl --set-default-version 2

# install chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


# install docker-desktop

choco install docker-desktop -y

docker pull pinetwork/pi-node-docker


# install pinode

choco install pinode -y

