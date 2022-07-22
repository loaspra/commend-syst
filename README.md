# Movie Recommendation System

In this project I combine several Deep Learning techniques to create a model that recommends moves to several users.

The model diagram is shown below:

**Insert model diagram**
{Describe phases of the model}

---

## Model's input: Data Pipelines
++ Explain the preprocessing applied to the data

++ Explain the transformation applied to the data

### Model's Features
++ Explain Feature engineering ♥

## 

The training was carried out with the small MovieLens dataset. 
**insert link**




The following steps describe how to clone this project and its dependencies. As I use Windows, the easiest way to run pip scripts from bash (cmd) is through Anaconda, for this reason I use conda to build the enviroment and its packages.

---
## Set up the environment (on Windows)
1. Install [Anaconda](https://repo.anaconda.com/archive/Anaconda3-2022.05-Windows-x86_64.exe)
2. Set up the environment:
```bash
make install
make activate
```

## Run the entire pipeline
To run the entire pipeline, type:
```bash
conda run dvc repo
```

# Auto-generate API documentation

To auto-generate API document for your project, run:

```bash
make docs
```
