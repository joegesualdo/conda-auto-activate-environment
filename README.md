# conda-auto-activate-environment
Auto activate conda environment when entering a directory.

# Install
## Using zinit
```bash
zinit load joegesualdo/conda-auto-activate-environment
```

# Requirements
The directory must have a conda environment file with a `name` key/value pair. For example:
```yaml
name: my-project
```

You can use the the [`mkpydir`](https://github.com/joegesualdo/mkpydir) to create a directory with a conda environment file.


# Usage
This package adds extra functionality to `cd` to automatically activate the conda environment name specified in the `environment.yml` file when entering a directory. If the conda environment does not exist, it will be created.

