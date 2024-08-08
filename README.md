# My dotfiles, environnement files ...

## ZSH / oh-my-zsh / etc

1 - Cleanup your environnement
```bash
rm -r .oh-my-zsh
rm .zshrc
rm -r .fzf
rm .fzf*
```

2 - Copy the archive

- Via SSH
```bash
scp user@host:~/zsh_archive
## Or
scp ~/zsh_archive user@host:~
```

3 - Uncompress the archive
```bash
tar xvf zsh_archive
```

4 - Optional (In case of change on cpu architecture) - Recompile fzf
```bash
cd .fzf
./uninstall
./install --all --no-update-rc
```

5 - Lie back and enjoy.
