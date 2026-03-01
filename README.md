# asus_tools
An unopinionated Asus Bios Renamer shell script.

## Prerequisites
You'll need access to a bash-like shell with the following binaries
`grep, strings, tail`. These, _should_, be present in almost any bash like environment.

## Using This Script

Clone this repo
1. open a terminal in the cloned repo directory
2. copy the target bios file `SomeFile.CAP` and the `BiosRenamer.exe` to this directory
3. mark the script as executable
```sh
chmod u+x ./bios_renamer.sh
```
4. execute the script from the terminal
```sh 
./bios_renamer.sh
```

## How The Script Works

The expected file name is recorded in this rename binary. This script fetches all strings from the binary, looks for `.CAP`, then renames the original `.CAP` file.

## Why This Repo Exists
- Access
  - Doesn't require Linux (should work on MacOS, FreeBSD)
  - Doesn't require Windows or emulation (e.g. WINE)
  - Doesn't require x86
- I'm opinionated
  - A binary to rename a file is absurd
  - ASUS could just ship this with the appropriate name
  - ASUS could leave instructions in plain text
  - Other tools appear to be overly complex and expose individuals to supply chain attack


## Technical Note

The `diff` of the original file and the renamed file is empty, and SHA256 sums are identical for the ASUS provided binary, and likewise for this script. 
