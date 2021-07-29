# Roblox28072021
A copy of a version of Roblox released on 28/07/2021 and copies of HTTP requests that VirusTotal detects the installer executable makes.

Please note that I've not managed to make this work successfully yet, I'd highly advise users to experiment with making this work themselves.

The ClientSettingsCDN folder is everything that it should grab from clientsettingscdn.roblox.com, SetupRBXCDN is everything that it should grab from setup.rbxcdn.com. Roblox Player is an installation of Roblox (I will also have the executable for installing Roblox somewhere).

In order for this to work, I'd recommend trying to use XAMPP to create a server on 127.0.0.1:80 and modifying C:\Windows\System32\drivers\etc\hosts using Notepad (as an admin) to redirect traffic that is heading for http://clientsettingscdn.roblox.com/ and setup.rbxcdn.com to ::1 in hosts. I recommend reading a tutorial on how to use hosts so it runs correctly.

Roblox Studio isn't included because you can bypass updates with offline mode and I did not install it on the VM I was experimenting with.