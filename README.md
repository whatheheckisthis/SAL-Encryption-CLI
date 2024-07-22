# Bash Encrypt-Decrpyt OpenSSL

Simple encryption-decription method using Symmetric-key encryption by openssl

## Encrypt Command

> ./generate.sh ~/.ssh/id_rsa

It will asking passphrase to set with the encryption process

> Input passphrase for encypt: < type the passphrase >

The encrypted file will saved on `files` directory.

## Decrypt Command

### On the fly reading

By running the command above, the result of decription value will be shown on the terminal.

> ./read.sh ./files/someFileName.dat

It will ask for the passphrase

> Input passphrase read the content: < type the passphrase >

### Read with inline passphrase

> ./read.sh ./files/someFileName.dat thepasscode

### Result on File

You can also flush the result into file

> ./read.sh ./files/someFileName.dat > thefile.txt

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details