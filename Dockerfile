FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Install setuptools_scm and wheel before installing your requirements
RUN pip3 install --upgrade pip setuptools wheel setuptools-scm build

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
