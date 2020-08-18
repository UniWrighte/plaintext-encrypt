## Explanation:

These scripts allow you to encrypt and decrypt using base64 human readable plain text. 

The idea is you can encrypt some data and share it with another user by copy-paste like in a chat and then delete the message.

This can be more ephemeral than uploaded files and easier to share when file sharing isn't an option. 

Also avoids the need for potentially infected files from entering your system. 


## Usage:

Make a file to test with:

    echo "here is a secret" > msg.txt

Encrypt file with ssh public key:

    ./encrypt.sh ~/.ssh/id_rsa.pub ./msg.txt

Decrypt output file with ssh private key:

    ./decrypt.sh ~/.ssh/id_rsa ./output.enc


copy and paste the output of encrypt to avoid file sharing.
