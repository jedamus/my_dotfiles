# dotfiles

This is my collection of dotfiles.

## Getting started

Please note that calling the installation-script will overwrite existing dotfiles! So DO save your beloved ```.bashrc```!

change to dotfile-directory and use the installation-script:

```sh
sh ./install.sh
```

When you have machines, which should ssh to your machine, do the following:

```sh
cd ~/.ssh
cat other_machine.pub >> authorized_keys
```

If you want to connect to another machine, create a private/public key pair
like this:

```sh
cd ~/.ssh
ssh-keygen -b 4096 -t rsa -f id_rsa_2
```

Then edit config to use this file (the -f part):

```
...
Host another_machine
IdentityFile ~/.ssh/id_rsa_2
...
```

You have to copy the public key to another machine and do the following:

```sh
scp id_rsa_2.pub user@another_machine:~/.ssh
ssh user@another_machine
cd ~/.ssh
cat id_rsa_2.pub >> authorized_keys
```
