# ml-base
My notes on Machine Learning as I work on projects. I realized that I was looking up the same things too frequently so decided to make notes and logs.
- General Workflow: git, conda, wsl, vscode notes
- Data preprocessing: pandas, numpy notes
- Training: pytorch, tensorflow, hyperparamater tuning, cluster notes
- Domain Specific: time series, object detection, nlp notes

## Conda Commands
update conda itself
```
conda update conda
```
create environment with latest python
```
conda create -n mlbase python
```
save conda environment (clean)
```
conda env export --from-history | grep -v "prefix" > environment.yml
```
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
git remote set-url --push origin no_push
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
get submodule after cloning
git submodule update --init
for nested submodules
git submodule update --init --recursive
```



## VSCODE
keyboard shortcuts
```
Ctrl + Alt + Up/Down    Add Cursors
Shift + Alt + Up/Down   Copy Line Up/Down
Alt + Up/Down           Move Line(s) Up/Down
Ctrl + D                Add Cursor next to match
Ctrl + U                Cursor Undo
Ctrl + Shift + \        Go to Bracket
Ctrl + ]                Indent Line Forward
Ctrl + W                Close Tab
```
