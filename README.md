# Choco 🍫

A [PowerShell 7](https://github.com/PowerShell/PowerShell) script that eases the usage of [Chocolatey](https://github.com/chocolatey/choco).

## Usage

All commands described below need to be run with administrator privileges.

### Install a list of software packages

```powershell
.\choco.ps1 -install -packages packages.txt
```

### Upgrade installed software packages

```powershell
.\choco.ps1 -upgrade
```

### Install Chocolatey package manager

```powershell
.\choco.ps1 -installPackageManager
```

Chocolatey is installed through the official digitally signed [install script](https://chocolatey.org/install.ps1).

PowerShell security policy must allow the execution of remotely signed scripts on the local machine.

## Included software packages lists

The [pkg](pkg/) folder contains lists of verified software packages that serve different purposes.

The software packages that makes up each of these lists can (and should) be reviewed before being installed. The lists can also be edited for custom use.

| List                         | Description                                                                                              |
|------------------------------|--------------------------------------------------------------------------------------------------------- |
| [devenv.txt](pkg/devenv.txt) | Installs a base development environment (runtimes, SDK's, tools, etc.) for PRIMAVERA R&D engineering.    |
| [utils.txt](pkg/utils.txt)   | Installs a set of daily use utilities. This list focuses mainly on open-source and lightweight software. |
