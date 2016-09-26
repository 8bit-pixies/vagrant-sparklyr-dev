sudo yum install -y wget

sudo yum install -y --nogpgcheck https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-server-rhel-pro-1.0.22-x86_64.rpm

sudo -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm'

sudo yum install -y R

wget http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
tar xvf scala-2.10.4.tgz
sudo mkdir /usr/local/scala
sudo mv scala-2.10.4 /usr/local/scala

sudo yum install -y curl libcurl curl-devel
sudo yum install -y openssl-devel
sudo yum install -y git

# sudo rstudio-server start
Rscript -e 'install.packages(c("devtools"), dependencies=T)'
Rscript -e 'install.packages(c("dplyr"), dependencies=T)'
Rscript -e 'devtools::install_github("rstudio/sparklyr", dependencies = T)'
Rscript -e 'sparklyr::spark_install(version="1.6.1")'
