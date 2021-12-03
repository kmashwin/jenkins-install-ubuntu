#!/bin/bash
set -x
sudo apt update
sudo apt upgrade
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt install default-jre
sudo apt-get update
sudo apt-get install jenkins
echo Unlock Jenkins
echo "To ensure Jenkins is securely set up by the administrator, a password has been written to the log (not sure where to find it?) and this file on the server:"
echo "/var/lib/jenkins/secrets/initialAdminPassword"
echo "Please copy the password from either location and paste it below."
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
