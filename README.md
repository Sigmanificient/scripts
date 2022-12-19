# Scripts

A collection of scripts I use to make my life easier.


## Installation

1 - Clone the repository and add the scripts to your path.
```sh
git clone
```

2 - Run the following command to add the path to your `.bash_profile`

> :warning: Run this only once!

```sh
echo "export PATH=\"\$PATH:$HOME/Scripts/global\"" >> ~/.bash_profile
```

3 - Install the scripts

```sh
make install
```

## Uninstall

```sh
make uninstall
```

> :warning: This will not remove the path association to ~/Scripts/global
