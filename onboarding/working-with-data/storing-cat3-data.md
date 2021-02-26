---
description: How do I create an encrypted folder on my computer?
---

# Storing CAT3 data

CAT3 data can only be stored on ecrypted medium. How do I create such a folder on Windows, Mac and Ubuntu?

## Encryption tutorial for windows systems

How to choose the best data protection, encryption technology? [https://www.youtube.com/watch?v=12pQG8sHILY](https://www.youtube.com/watch?v=12pQG8sHILY)

_Check your computer have a built-in SED SSD or HDD_

If you have a Self-Encrypting Drive \(SED\) SSD you can turn on that. Find a proper YouTube video how to turn on SED or write to me.

Check you SSD here: /Control\_panel/Device\_manager/Disk\_drives

_Turn on Windows Bitlocker._

The latest Windows products have built in Bitlocker software. Only in Win 7 PRO version DON’T have.

Tutorial for Win 8/10:

[https://www.youtube.com/watch?v=5o9zGAOOg4c](https://www.youtube.com/watch?v=5o9zGAOOg4c)

_Use VeraCrypt for Full Disk Encryption \(FDE\)_

[https://www.youtube.com/watch?v=i\_WkMELC790&t=178s](https://www.youtube.com/watch?v=i_WkMELC790&t=178s) In my case FDE successfully created with VeraCrypt 1.19 on my Dell Latitude E6430, WIN 7 Pro, with Micron C400 RealSSD 2.5”. Steps:

* Download and install VeraCrypt. [https://www.veracrypt.fr/en/Downloads.html](https://www.veracrypt.fr/en/Downloads.html)
* Run and click Create Volume.
* Choose: Encrypt the system partition or entire system drive.
* Type of system protection – Normal.
* Encrypt the whole drive – Attention: The program says if you have Recovery drive the VeraCrypt boot loader can cause damage.

Check Disk Management. \(Write “partition” to Search field.\)

Despite the attention I choose “NO” because I want a FDE and there were no problems with the boot.

* Encryption of host protected area I choose “YES”. If you have SDD and ALSO a HDD \(RAID system\) choose “NO”
* Encryption options: AES – SHA 256. If you choose complicated encryption algorithm the encryption process takes more time.
* Password: Choose minimum 20 characters. Write it somewhere! \(Phone, Paper etc.\) I used this site for help: [http://www.xorbin.com/tools/password-generator](http://www.xorbin.com/tools/password-generator)

When you will enter the code when your system boot, you must use US/EN keyboard settings. So be careful with @\#$ characters. \(US keyboard Shift+2, Shift+3, Shift+4\)

If you choose the PIM option AFTER you entered the password, you also must type numbers as a second password. If you choose a big number for PIM, the boot time will dramatically increase! I don’t use PIM number but I have a very strong password!

* Do the encryption choose “game” with you mouse. 
* Save a rescue disk. It is good if the booting menu or the BIOS have some errors. With a rescue disk, you can decrypt your hard disk drive. I save the rescue disk iso file to a USB drive and skip this step because my DVD burner doesn’t work. If you have a DVD burner do this step.
* Wipe mode: I choose zero because of the encryption speed.
* When you restart your machine, you can try your password.
* When the encryption is running turn off sleep mode and do not turn off the computer!
* When the encryption is ready and you restart your machine, you should see “System drive” in your VeraCrypt window.

## Mac

Create an encrypted .dmg disk image, which can be mounted. Using Disk Utility, select "Create new image" and choose "Encryption". Create a long-enough password to make it secure. Give the image a short but memorable name \(say, `Data3`\). You can easily set up an image of even 20GB or more. Put the .dmg file somewhere where you can easily access it.

Double-click the .dmg file to mount it. After you enter the password, the encrypted "drive" will be mounted under `/Volumes/name-of-image`. [source](https://www.howtogeek.com/183826/how-to-create-an-encrypted-file-container-disk-image-on-a-mac/)

## Linux \(Ubuntu 18.04\)

The new Dell XPS/Ubuntu laptops at MicroData are already encrypted.

I strongly advise to encrypt the whole disk with luks when you install your OS instead of encrypting a single folder. The latter is also feasible but much less convenient.

To create an encrypted folder use ecryptfs. First you need to install it by opening up a terminal and issuing the following command \(you will get prompted for a password\):

```text
sudo apt-get -y install ecryptfs-utils
```

Create a new directory that we will encrypt. In this example, it is the directory called `secure` within the `home` folder of the currently logged in user:

```text
mkdir ~/secure
```

Now we encrypt it by mounting it with encryptfs:

```text
sudo mount -t ecryptfs ~/secure ~/secure
```

You will get prompted for your password and then a passphrase. Choose a strong passphrase. You have to select a cipher. Select `aes: blocksize = 16; min keysize = 16; max keysize = 32`. Yo have to select a key size. Select 32. You will be asked if you want to enable plaintext passthrough. Select no. You will be asked if you want to enable filename encryption. Select yes. When you are asked for a Filename Encryption Key \(FNEK\) Signature just press enter. When it asks if you would like to proceed with the mount, select yes. When it asks if you would like to append sig \[list of chars\] to \[/root/.ecryptfs/sig-cache.txt\] in order to avoid this warning in the future select yes.

Your encrypted folder is now ready. To unmount it, type:

```text
sudo umount ~/secure
```

You can mount it again anytime by

```text
sudo mount -t ecryptfs ~/secure/ ~/secure/ -o ecryptfs_cipher=aes,ecryptfs_key_bytes=32,ecryptfs_passthrough=no,ecryptfs_enable_filename_crypto=yes
```

Just type your passphrase and press enter when it asks for your FNEK.

\(source: [https://stackoverflow.com/c/ceu-microdata/questions/32](https://stackoverflow.com/c/ceu-microdata/questions/32) \)

