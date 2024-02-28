# ml-base
My notes on Machine Learning as I work on projects. I realized that I was looking up the same things too frequently so decided to make notes and logs.
- General Workflow: git, conda, wsl, vscode notes
- Data preprocessing: pandas, numpy notes
- Training: pytorch, tensorflow, hyperparamater tuning, cluster notes
- Domain Specific: time series, object detection, nlp notes

## Create Environment

### Python virtualenv
create environment with name env
```
python3 -m venv env
```

### Conda Commands
create environment with latest python
```
conda create -n mlbase python
```

update conda itself
```
conda update conda
```

save conda environment (clean)
```
conda env export --from-history | grep -v "prefix" > environment.yml
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
