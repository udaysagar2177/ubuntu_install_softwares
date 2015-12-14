# update system
apt-get update

# install basic softwares
apt-get install -y git vim curl wget net-tools python

# install pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py

# install maestro-NG
pip install maestro
