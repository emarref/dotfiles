Clone the repo into `~/.dotfiles`

```
git clone --bare <git-repo-url> $HOME/.dotfiles
```

Set up an alias to simplify git commands on your dotfiles. (This is already in `.aliases`)

```
alias df='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Check out the code into your home dir

```
df checkout
```

Ignore the rest of your home dir

```
df config --local status.showUntrackedFotfiles
```

Re-open your terminal to ensure all config is sourced.

---

From now on, use `df` instead of `git` when managing your dotfiles. E.g. if you make a change to a file:

```
df add <file>
df commit -m "Made a change"
df push
```
