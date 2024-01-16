# conda-auto-activate-environment
Auto activate conda environment when entering a directory.

# Requirements
The directory must have a conda environment file with a `name` key/value pair. For example:
```yaml
name: my-project
```

# Usage
This package adds extra functionality to `cd` to automatically activate the conda environment name specified in the `environment.yml` file when entering a directory. If the conda environment does not exist, it will be created.

