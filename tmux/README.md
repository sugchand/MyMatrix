# My TMUX Configuration.

The tmux configuration file I used for my machine is 'tmux.conf' in the direcctory. copy the file to '~/.tmux.conf' for using the new mapping and settings.

## TMUX shortcuts
```

| ShortCut      | Usage                                                             |
|-------------  |------------------------------------------------------------------ |
| tmux new -t   | Create a,new tmux session in new tab                              |
| tmux new -s   | Create new session                                                |
| Ctrl d        | Exit the tmux session inside(if its last window for the session)  |

```

Note: The command option is mapped to 'Ctrl + a'. User must press the command option to enable command mode. In the keyboard shortcuts, we specify the command option as 'CtrlA'.

After a session is created windows can be created inside session, also each window can devided again into panes. Use following shortcuts for it

 ```
 
| ShortCut     | Usage                              |
|---------- |------------------------------------   |
| CtrlA c   | Create a new window in the session    |
| CtrlA p   | Switch to previous window             |
| CtrlA n   | Switch to next window                 |
| Ctrl d    | Exit the tmux session window.         |

```

```
| ShortCut              | Usage                             |
|--------------------   |-------------------------------    |
| CtrlA -               | Split pane horizontal             |
| CtrlA |               | Split pane vertical               |
| CtrlA <space>         | Toggle pane arrangement           |
| CtrlA d               | Detach the tmux session           |
| CtrlA s               | List all the created sessions     |
| CtrlA ,               | To rename the created window      |
| CtrlA <Arrow Keys>    | Switch between panes.             |
| CtrlA z               | Maximize active pane.             |

```
