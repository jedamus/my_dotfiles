# dotfiles

This is my collection of dotfiles.

## Getting started

change to dotfile-directory and use the installation-script:

```
sh ./install.sh
```

When you have machines, which should ssh to your machine, do the following:

```
cd ~/.ssh
cat other_machine.pub >> authorized_keys
```

If you want to connect to another machine, create a private/public key pair
like this:

```
ssh-keygen -b 4096 -t rsa -f id_rsa_2
```

Then edit ~/.ssh/config to use this file (the -f part):

```
IdentityFile ~/.ssh/id_rsa_2
```
