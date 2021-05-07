## configs

```bash
git config --list
```

### versus (on Windows)

```bash
git config --list --system
git config --list --global
git config --list --local

# support longlonglong filenames
git config --system core.longpaths true

```

### or on Windows

```bash
git config --list --show-origin
```

On Windows, as there is no central /etc/ directory, there is yet another config file (located at %PROGRAMDATA%\Git\config), intended to contain settings for all Git-related software running on the machine. Consequently, this config file takes an even lower precedence than the $(prefix)/etc/gitconfig file.

```cmd
cmdkey /list
cmdkey /delete:ZIELNAME
```
