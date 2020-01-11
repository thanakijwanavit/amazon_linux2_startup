## Install and Enable the EPEL Repository for yum
amazon-linux-extras install -y epel

## Install packages generally required for building RPM packages
yum install -y yum-utils rpm-build redhat-rpm-config make

## Install build dependencies for mosh
yum-builddep -y mosh

## Download the source RPM for mosh
yumdownloader --source mosh-1.3.2-1.el7

## Rebuild the RPM package locally
rpmbuild --rebuild mosh-1.3.2-1.el7.src.rpm

## The resulting RPM files will now be located in ~/rpmbuild/RPMS/
## You can install these using `yum install $PATH_TO_RPM_FILE`
## e.g. `yum install ~/rpmbuild/RPMS/x86_64/mosh-1.3.2-1.amzn2.x86_64.rpm`
## The RPM file can be installed on any other Amazon Linux 2 machines of the same machine architecture without rebuilding it on each machine.
 
yum install ~/rpmbuild/RPMS/x86_64/mosh-1.3.2-1.amzn2.x86_64.rpm
