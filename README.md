# Session - 42 - quick init

## Why me ?!
One command, and get to work!<br />
Magic is real.

## Usage

```bash
./session.sh [ install | omzsh | omzsh_theme ] `( theme_name )`
./session.sh [ omzsh_mail | reset | sublivim ]
./session.sh [ uninstall | rmomzsh | rmreset | rmsublivim ]
```

## Arguments
| Name          | Description                            |
| ---           | ---                                    |
| `install`     | Quick install of OMZSH and Sublivim    |
| `omzsh`       | Install only OMZSH                     |
| `omzsh_theme` | Set the theme at `theme_name` or `jsy` |
| `omzsh_mail`  | Set USER and MAIL env variable         |
| `reset`       | Create file to reset your session      |
| `sublivim`    | Install only Sublivim (BOOOH)          |
| `rmall`       | Uninstall OMZSH and Sublivim like pro  |
| `rmomzsh`     | Uninstall only OMZSH                   |
| `rmreset`     | Undo the reset command gnhgnh          |
| `rmsublivim`  | Uninstall only Sublivim (YEAH)         |

## Optional
You can add a `theme_name` to `instal`, `omzsh`, `omzsh_theme` to precise which theme you want to install.<br />
If no `theme_name` are provided, default theme is set at `jsy`.

## Why USER and MAIL ?
Because you're not Marvin, are you?

## Bugs (what ?)
When install OMZSH with `install` or `omzsh`, you have to `exit` when install is done.<br />
Otherwise, the theme will not be applied. USER and MAIL will not be exported either.

## Contribution
Any suggestions, love or bugs reporting ?<br />
Contact jmichaud@student.42.fr
