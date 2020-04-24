echo 'Acquire::ForceIPv4 "true";' | sudo tee /etc/apt/apt.conf.d/99force-ipv4
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt-get update
sudo apt-get install -y puppet-agent git
sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet
sudo puppet module install rtyler-jenkins
wget https://gitlab.com/roybhaskar9/devops/raw/master/release/jenkins/jenkinsserver/jenkins.pp
sudo puppet apply jenkins.pp
sudo apt-get install -y maven
