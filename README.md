# intra_shell 

A shell based solution to access 42 school's intranet

## How to Use it :

You will need python3.
I strongly recommand to create an alias in your .bashrc config file (or any config file for your shell).

Here is an alias you could use : 

```
alias intra="~/(YOUR DOWNLOAD PATH)/42-Intra_Shell/intra_shell.sh"
```

With this alias you can use Intra Shell like this :

```
intra -l lcesbron  # Open my profile page on the intra
intra -c           # Open Cluster Map
intra -g           # Open the Holy Graph
```

## Options :

-g		: Access to the Holy Graph

-h		: Help for intra_shell

-l [login]	: Access to the profile you specified

-p		: Access to the project page

-s		: Access to the manage slots page

-c		: Access to the cluster page

No Parameters	: Access to intra main page
