# Hyperparmater Tuning Notes

## Packages

Good summary provided by [pyhopper paper](https://arxiv.org/pdf/2210.04728.pdf)

- HyperOpt: parallelization is supported via Apache Spark
- Optuna: parallelization is supported via MySQL
- NeverGrad: developed by Facebook Research
- keras-tuner: have to add layers in a specific way, no parallelization support
- Autotune
- Dragonfly
- RayTune: Distributed processing, allows use of HyperOpt etc.
- PyHopper: Distributed, Intuitive, Lack of integrations as new package
