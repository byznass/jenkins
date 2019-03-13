# jenkins

1. Clone repository: `git clone https://github.com/byznass/jenkins.git`
2. Go to repository directory: `cd jenkins`
3. Create directory for SSL/TLS certificate: `mkdir certs`
4. Create directory for Jenkins data: `mkdir jenkins-data`
5. Make the Jenkins data directory accessible to Jenkins: `sudo chown $USER:docker jenkins-data`
6. Move to `certs/` directory: `cd certs`
7. Install [Certbot](https://certbot.eff.org) : `sudo apt-get install certbot -t stretch-backports`
8. Run certbot and manually set all information: `sudo certbot certonly`
9. Copy the crt file inside `certs/` directory: `sudo cp /etc/letsencrypt/archive/jenkins.tiolktrack.byznass.com/fullchain1.pem certs/fullchain.crt`
10. Copy key file inside `certs/` directory: `sudo cp /etc/letsencrypt/archive/jenkins.tiolktrack.byznass.com/privkey1.pem certs/privkey.key`
11. Remove [Certbot](https://certbot.eff.org): `sudo apt-get --purge remove certbot -t stretch-backports`
12. Run `export UID=$USER` - UID variable is already filled with uid like 1000
13. Run `export GID=999` - look for this value in `/etc/group` at id for `docker` group
14. Move back to repository root directory: `cd ../`
15. Run `docker-compose up` - first add current user in `doker` group 

Watch tutorial [here](https://youtu.be/GguqzW40re0)
