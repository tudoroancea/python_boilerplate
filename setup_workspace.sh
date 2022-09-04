# Copyright (c) Tudor Oancea, 2022

# create virtual environment (optional)
python3 -m venv venv
source venv/bin/activate

# install dependencies through pip
pip3 install --upgrade pip
pip3 install -r requirements-dev.txt
pip3 install -U black pre-commit  # install black and pre-commit if they were not listed in requirements-dev.txt
pre-commit install

# install dependencies in submodules
git submodule update --init --recursive
if [ -d "external" ]
then
    for dir in external/*/
    do
      pip install -e "$dir"
    done
else
    echo "No external repos dependencies found"
fi

# intsall workspace package
pip3 install -e .