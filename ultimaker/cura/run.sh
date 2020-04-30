#!/usr/bin/env bash
# Copy paste this in the root directory of the Cura repository and make it executable.
# Usage: ./run.sh (--staging) (--enterprise)
set -e

is_staging="false"
is_enterprise="false"

# Parse named input arguments
while [[ $# -gt 0 ]]; do
  case "${1}" in
    --staging)
      is_staging="true"
      shift
      ;;

    --enterprise)
      is_enterprise="true"
      shift
      ;;
    *)
      echo ""
      echo "Unknown keyword option '${1}'"
      echo ""
      exit 1
      ;;
  esac
done

# Configure PyEnv
export PATH="/home/cterbeke/.pyenv/bin:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Configure environment
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYTHONPATH="../Uranium:../libCharon:${PYTHONPATH}"

# Set to staging environment if requested
if [[ $is_staging = "true" ]]
then
    echo "Running Cura against cloud staging environment"
    export UM_CLOUD_POSTFIX="-staging"
fi

# Use enterprise version if requested
if [[ $is_enterprise = "true" ]]
then
    echo "Running Cura Enterprise version"
    export CURA_BUILD_TYPE="enterprise"
fi

# Activate the virtual environmnt
pyenv activate cura

# Install the needed requirements
pip3 install -r requirements.txt

# Run Cura
python3 cura_app.py

# De-activate the virtual environment after Cura quits
pyenv deactivate
