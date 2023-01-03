# [Moreh] Running DDIM on HAC
![](https://badgen.net/badge/Moreh-HAC/failed/red) ![](https://badgen.net/badge/Nvidia-A100/passed/green)

Reference: [Keras DDIM example](https://keras.io/examples/generative/ddim/)

## Prepare

### Data
The `oxford_flowers102` dataset is automatically downloaded by `tensorflow_datasets`.

### Code
```bash
git clone htttps://github.com/loctxmoreh/ddim-keras-example
cd ddim-keras-example
```

### Environment

#### On A100 VM
```bash
conda env create -f a100env.yml
conda activate ddim-tf
```

#### On HAC VM
```bash
conda env create -f hacenv.yml
conda activate ddim-tf
update-moreh --force --tensorflow
```

## Run
```bash
./run.sh
```
