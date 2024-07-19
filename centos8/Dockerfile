FROM centos:8

RUN groupadd -g 1001 build && useradd -u 1001 -g 1001 -G wheel build

RUN sed -i.bak 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && sed -i.bak 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN set -x \
    && yum install -y ruby-devel git rubygems gcc make rpmdevtools sudo automake autoconf rpmdevtools  \
    && yum clean all 
RUN gem install rubygems-update:3.3.26 --no-doc && update_rubygems
RUN gem install dotenv -v 2.8.1 -N 
RUN gem install clamp -v 1.0.1 -N 
RUN gem install mustache -v 0.99.8 -N 
RUN gem install json -v 1.8.6 -N  
RUN gem install ffi -v 1.16.3 -N
RUN gem install ruby-xz -v 0.2.3 -N
RUN gem install childprocess -v 0.9.0 -N --debug --backtrace --verbose
RUN gem install cabin -N
RUN gem install insist -N
RUN gem install stud -N 
RUN gem install arr-pm -N 
RUN gem install backports -N 
RUN gem install rexml -N
RUN gem install pleaserun --ignore-dependencies -N
RUN gem install fpm --ignore-dependencies -v 1.11.0 -N

RUN mkdir /src

WORKDIR /src/

CMD ["/usr/local/bin/fpm"]
