# Ultimaker Cura

The scripts in this folder can assist in running Ultimaker Cura from source. Follow these steps to use them.

1. Follow the [Cura Wiki Guide](https://github.com/Ultimaker/Cura/wiki/Running-Cura-from-Source) on running from source that best fits your situation. I recommend using `pyenv` on Linux or MacOS.
2. Copy `run.sh` into the root directory of the cloned Cura repository and make it executable. Git ignores this file.
3. Copy `CuraVersion.py` into the `cura` directory of the cloned Cura repository. Git ignores this file.
4. You can now use `./run.sh` to run Cura in your Python virtual environment. Pass the `--staging` or `--enterprise` options if needed.
