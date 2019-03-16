# jenkins

1. Clone repository: `git clone https://github.com/byznass/jenkins.git`
2. Go to repository directory: `cd jenkins`
3. Create directory for SSL/TLS certificate: `mkdir certs`
7. Install [Certbot](https://certbot.eff.org) : `sudo apt-get install certbot -t stretch-backports`
8. Run certbot (2 times) and manually set all information: `sudo certbot certonly`
9. 
```bash
sudo cp /etc/letsencrypt/archive/jenkins.tiolktrack.byznass.com/fullchain1.pem certs/jenkins-fullchain.crt
sudo cp /etc/letsencrypt/archive/jenkins.tiolktrack.byznass.com/privkey1.pem certs/jenkins-privkey.ke
sudo cp /etc/letsencrypt/archive/sonar.tiolktrack.byznass.com/fullchain1.pem certs/sonar-fullchain.crt
sudo cp /etc/letsencrypt/archive/sonar.tiolktrack.byznass.com/privkey1.pem certs/sonar-privkey.key
```
11. Remove [Certbot](https://certbot.eff.org): `sudo apt-get --purge remove certbot -t stretch-backports`
13. Run `export DOCKER_GID=999` - look for this value in `/etc/group` at id for `docker` group
15. Run `docker-compose up` - first add current user in `doker` group 

Watch tutorial [here](https://youtu.be/VhnVoYd-cjQ)
