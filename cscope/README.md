# Cscope Settings
I use cscope and ctags for day to day dev activities. Here is the shortcuts in
cscope that I use all the time.

## cscope shortcuts

```
| ShortCut      | Usage                                                        |
|-------------  |--------------------------------------------------------------|
| cscope -R     | Create a,new cscope index set in a repo                      |
| cscope -d     | Open cscope using existing index set                         |
| Ctrl d        | Exit the cscope session                                      |

```


```
| ShortCut      | Usage                                                        |
|-------------  |--------------------------------------------------------------|
| <tab>         | switch between two panes inside cscope                       |
```

## Cscope for C++ files

By default Cscope can work on 'C' codebase without any additional configuration.
However to make cscope to index C++ files, the input file set should be
updated with C++ file set using the script attached.

A script 'cscope-update.sh' is provided to avail the cscope for C++ repo.

* Update the 'REPO' to the C++ code base.
* Update the file extension list according to the file set
* Run the script to generate index for C++ files.

Once the file-set is created, the code search can be done with usual cscope
commandsets.

Note :: Script may take a while to complete based on the size of repo.


