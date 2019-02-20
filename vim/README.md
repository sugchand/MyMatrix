# Vim configuration

I use vim as my code editor for most of the time. Use the attached vimrc
file as vim configuration.

ctags is the friend of any developer using vi/vim.I use it for code walk all
the time.

## Ctags shortcuts

```
| ShortCut      | Usage                                                        |
|-------------  |--------------------------------------------------------------|
| :help tags    | help on tags                                                 |
| :ts <ident>   | Show all tags that matches ident                             |
| :tj <ident>   | Same as 'ts', but jump to ident if there is only one tag     |
| :tp           | Goto the previous tag in the ts list.                        |          
| :tn           | Goto the next tag in the ts list.                            |
| :tj /<ident>  | Show all tags that has ident in it(regexp).                  |
| :tj /^<ident>  | Show all tags that starts with ident in it(regexp).         |
```

```
| ShortCut      | Usage                                                        |
|-------------  |--------------------------------------------------------------|
| Ctrl ]        | Jump to the tag definiton                                    |
| Ctrl t        | Jump back from the definition                                |
```
