#!/usr/bin/env bash

# This will install ansible in .local or Library (depending on platform Linux/MacOS)

if ! which pip >/dev/null; then
  curl https://bootstrap.pypa.io/get-pip.py | python3 - --user
else
  echo "Pip already installed.. omitting..."
fi

if ! which ansible >/dev/null; then
  pip install --user ansible
else
  echo "Ansible already installed.. exiting..."
  echo 0
fi
