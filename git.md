## Git Commands

List curent remotes
```
git remote -v
```
Rename origin to upstream
```
git remote rename origin upstream
```
Add new origin
```
git remote add origin https://github.com/mnm-matin/Machine-Learning-Practical.git
git fetch origin
```

Disable Upstream Push
```
git remote set-url --push upstream no_push
```

Creating Branches
```
Add branches notes
```

Pull from upstream
```
git pull upstream <branch>
```

Note on pulling changes
```
Avoid running git pull with local changes present as it creates a merge commit
git pull --ff-only (runs git pull but only if it can be fast-forwarded)
git pull --rebase (replays local changes after pulling remote changes)

Setting in config (use --global flag for global changes)
git config pull.ff only
git config pull.rebase true
```

Interactivs Rebase commits
```
git rebase -i upstream branch
```

Submodules
```
Add Submodule
git submodule add <url>

Remove Submodule (https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule)
git rm <path-to-submodule> (if commited)
remove lines related to submodule from .gitmodules (if not commited)
Rmeove remaining files of the submodule
rm -rf .git/modules/<path-to-submodule>
git config --remove-section submodule.<path-to-submodule>


Get submodule after cloning
git submodule update --init
For nested submodules
git submodule update --init --recursive
```
