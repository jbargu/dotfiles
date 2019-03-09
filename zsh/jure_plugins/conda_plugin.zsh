#!/bin/zsh

# Changes to conda env if navigating to same name directory
# Deprecated!!! because conda env list is slooooow
# using direnv until then.

_conda_env_auto_activate() {
  name=$(basename $(pwd))
  if $(conda env list | grep -q "^$name "); then
    source activate $name
  fi
}

# Activate on shell start.
#_conda_env_auto_activate

# Activate on directory change.
# Zsh. Should make this for bash too
#chpwd_functions=(_conda_env_auto_activate)
