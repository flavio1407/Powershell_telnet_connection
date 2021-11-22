# Powershell telnet test connection
Powershell telnet connection test


 

1 - Requirement
Install Telnet on Windows
Telnet is not installed by default on Windows; if you try to run it you will get the message "'Telnet' is not recognized as an operable program or batch file." To install Telnet:
Click Start.
Select Control Panel.
Choose Programs and Features.
Click Turn Windows features on or off.
Select the Telnet Client option.
Click OK.
A dialog box appears to confirm installation. The telnet command should now be available.


------------------



2 - Copy file to computer telnet_lista_csv.ps1

3 - Copy file to computer lista_ip.csv
a - Insert to the IPS listing in the list_ip.csv file
remoteHost,port

182.129.201.1,80

182.129.2.2,443

182.129.0.1,135


------------------

4 - Open PowerShell
Press “Windows +X” to open the Start context menu and click “Windows PowerShell (Admin)”.


------------------

5 - set line comand: ExecutionPolicy Unrestricted


------------------

6 - Run script ./telnet_lista_csv.ps1

Results: lista_ip.csv

"remoteHost","port","status"

"182.129.201.1","80","failed"

"182.129.2.2","443","failed"

"182.129.0.1","135","failed"

------------------
