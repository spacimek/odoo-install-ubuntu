# Dir na Odoo
mkdir /opt/odoo
mkdir /opt/odoo/Odoo10C

# Setup Odoo group + create first Odoo user
groupadd -r odoo

# UBUNTU: adduser --home /opt/odoo/10_envs/ --ingroup odoo odoo10
useradd -d /opt/odoo/ -m -g odoo odoo10

# First update the system
# Ubuntu cleanup: sudo apt-get autoremove
yum update

# UBUNTU update: 
apt-get update

# Install pip and VE
apt-get python-pip python-virtualenv 
pip install virtualenvwrapper
pip install --upgrade pip

# Now add virtualenvwrapper settings on global level - first check where python2.7 really is!
# vi /etc/profile.d/custom.sh
## # Setup virtualenvwrapper
## export WORKON_HOME=/opt/odoo/10_envs
## export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
## export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
## export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
##
## # Initialize the virtualenvwrapper
## source /usr/local/bin/virtualenvwrapper.sh
##
## workon $USER

# Nginx
apt-get install nginx

# Install development libraries needed to correctly install the requirements
# UBUNTU:
apt-get install libxslt1-dbg libxslt1-dev libxslt1.1  libxml2 libxml2-dbg libxml2-dev libxml2-doc libxml2-utils libxml2-utils-dbg libsasl2-dev libldap2-dev libsasl2-dev libssl-dev -y
# openldap can be substitute for libldap2-dev

# Building cryptography
# UBUNTU: 
apt-get install build-essential libssl-dev libffi-dev python-dev

# You also need to install postgresql-server-dev-X.Y for building a server-side extension or libpq-dev for building a client-side application.
apt-get install postgresql-server-dev-9.3 libpq-dev

# Install Python Dependencies for Odoo
apt-get install python-dateutil python-docutils python-feedparser python-libxslt1 python-libxslt1-dbg python-libxml2 python-lxml python-lxml-dbg python-lxml-doc python-jinja2 python-ldap python-mako python-mock python-openid python-psycopg2 python-psutil python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi poppler-utils python-pip python-pypdf python-passlib python-decorator mc bzr python-setuptools python-markupsafe python-reportlab-accel python-zsi python-yaml python-argparse python-openssl python-egenix-mxdatetime python-usb python-serial lptools make python-pydot python-psutil python-paramiko poppler-utils python-pdftools antiword python-requests python-xlsxwriter python-suds python-gevent

# Install GeoIP
apt-get install libgeoip-dev geoip-database-contrib

# additionaly
pip install flanker ofxparser

# Install xlrd for operating with Excel files
pip install xlrd

# Odoo Web Dependencies
# UBUNTU: 
apt-get install nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g less less-plugin-clean-css

# Install PostgreSQL database server
apt-get install postgresql postgresql-contrib

# Install gdata
pip install gdata

# Now get Git
apt-get install git


