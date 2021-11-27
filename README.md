# ml-base
Highly opinionated starter for machine learning projects. I will be starting from scratch (i.e empty repo).
Includes:
- ML-Framework: PyTorch (Tensorflow is great for production)
- Monitoring: Comet.ml
- Conda Envs
- VS Code (with configs and extensions)
- Linting and Code Formatters

Also includes markdown files for:
- Setting up Cloud Computing (Google Cloud, AWS, University of Edinburgh Informatics Clusters)
- Panda (All the things I search on stackoverflow everytime)

Also also includes jupyter notebooks for:
- Common Data Analysis things
- Mini-Project 1: .....
- Mini-Project 2: .....

Also also also includes scripts for:
- setting up dev environment on brand new computer
- scheduling jobs on cluster


## Conda Commands
conda update conda

conda create -n mlbase python

conda env export --from-history | grep -v "prefix" > environment.yml

## Git Commands

List curent remotes
git remote -v

Rename origin to upstream
git remote rename origin upstream

Add new origin
git remote add origin https://github.com/mnm-matin/Machine-Learning-Practical.git
git fetch origin

Disable Upstream Push
git remote set-url --push origin no_push

Pull from upstream
git pull upstream mlp2021-22/coursework2
Note: use --reabase for pulling for syncing changes
