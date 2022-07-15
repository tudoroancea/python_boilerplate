python3 -m pip install --upgrade pip
pip3 install -r requirements.txt
pip3 install black
pip3 install black[d]
python3 -m ven venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip3 install -e .
deactivate
