[G]hostbox - Self hosted Dropbox Tor client (Windows tool + PHP CMS)

A portable windows tool to launch your own (basic) self-hosted dropbox clone on Windows. [G]hostbox contains two executable files (Startserver.exe and stopserver.exe) and a PHP based CMS with login portal.

##How does [G]hostbox work?##
By simply clicking startserver.exe, [G]hostbox will startup it's own PHP server with CMS, start TOR, create (or load a previous made) an .onion adress.
All the files in the 'Shared' folder can now be browsed and downloaded from inside the browser by simply visiting your own .onion adress (and login with your password) from any where around the world (either on your phone, tablet, laptop or any other device that supports browsing the web).  

So in short: [G]hostbox is a self hosted file sharing tool which turns your device in to a TOR web server, making your shared files accessable from anywhere.


##Downloads##
Binary (plug and play):
Binary (+ source code):


##Features##
- Fully automated & Plug and Play (downloading portable PHP, creating an .onion adress)
- Easy as Pie! (Click Ghostbox-StartServer.exe to start and Ghostbox-StopServer.exe to stop the server)
- Log in portal (Make your [G]hostbox private)
- Easy to remove the log in portal and share your files with anyone that visits your .onion domain.
- Encrypted shoutbox (Form to publish message to the encrypted shoutbox. It simply writes a new line to a .txt file and re-encrypts the txt file so it will only be readable once logged in on the web portal)


###First boot?###
Upon first launch (simply click on Ghostbox-StartServer.exe), [G]hostbox will download a portable php version (one-time only) from a static http url and copies the portable PHP files to the right folder inside the [G]hostbox folder. After the first boot (when PHP is downloaded inside the [G]hostbox folder) the tool will start a PHP server, launch TOR and create an .onion adress for you. Fully automated.



###100% Portable###
No files are saved on local PC windows folders (such as %APPDATA%). All files remain inside the [G]hostbox folder itself. That means you can simply save everything on an USB thumb drive and take (and boot it up) as you're on the road. However, you could also keep it running 24/7 from home (and access your files anytime you'll need them where ever you are).

###Where to place the files I want to share?###
You decide which files you want to share. Copy and paste those files inside the 'shares' folder.
You can find the www folder here: Server -> www --> shares.

###My browser won't open the .onion domain###
Most common errors:

**Number one:** You'll need a TOR browser to visit .onion websites!
It's available for Windows, Linux, Mac, iOS and Android.

**Number two:** the file startserversilent.exe gets blocked by windows.
The exe simply loads QuickPHP silently in the background. Some Antivirus tools or the Windows Firewall might find this suspicious and thus it gets blocked.
In case it gets blocked: First launch Ghostbox-StartServer.exe, wait a couple of seconds and then go to the folder 'Server' and start QuickPHP.exe manually.



###Configuration###
Browse to your downloaded Ghostbox folder.
Then go to the folder: Server\www\resources, and open the file config.php.

- Exclude files, folders and filetypes
In the config file you can exclude custom files or filetypes (that won't show up in the file browser inside your internet browser). You could exclude for example *.php files from being listed etc.
You can exclude filetypes or exact matching filenames.

- Changing site title, description etc.
In the same 'resources' folder, open the file: site-settings.php (and edit the values).

- Changing the password?
Visit http://www.sha1-online.com/ and create a SHA1 password HASH. Copy that HASH.

In the 'www' folder you will find index.php.
On line 7 you'll see: $password = '';
Paste the SHA1 HASH between the ''. 
Example:  $password = 'c38cb759afd8e0f226d91bfcf3763aa354682b92';

- CSS?
The original CSS theming is made by https://www.creative-tim.com.
They offer free and premium bootstrap themes! Their work is awesome! Check it out.



###Editing the source code###
How to edit?

- Download [G]hostbox
Step one:
Download the [G]hostbox release here:
Unzip the archive

Step two:
Download the batch files from this Github page or copy them from the SourceCode folder, inside the ZIP archive.
Place the batch files to the exact same location as the .exe files.
Make changes to the .bat files and re-compile them to .exe files.
Once again, keep the same folder structure and filenames or else [G]hostbox won't be able to find and launch the files.


- You'll need a BAT to EXE converter.
Download here: http://download.cnet.com/Bat-To-Exe-Converter-Portable/3000-2069_4-10555897.html

- Any text editor (such as Windows Notepad)
To edit the batch (.bat) files and the PHP files

The exe files are simply batch files that launch some binaries (they are bundled with the [G]hostbox download) such as TOR, Curl and the PHP server (and make sure they don't save data outside the original [G]hostbox folder).
Batch files can be edited with any text editor, even the standard Windows software: Notepad. Make any changes you'll need and re-compile the BAT file back to EXE with the BAT2EXE converter.


###Third party binaries###
[G]hostbox is made possible thanks to:
TOR
Curl
QuickPHP

For the user interface:
NirCMD - http://www.nirsoft.net/utils/nircmd.html
Wbusy
Messagebox

For the PHP back and frontend:
PHPcrypt - https://github.com/gilfether/phpcrypt
PHP Directory Lister - https://www.directorylister.com/

Have fun with your own personal self hosted dark web Dropbox clone!
Got questions? Hit me up.
