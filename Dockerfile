# Use phusion/passenger-full as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/passenger-docker/blob/master/Changelog.md for
# a list of version numbers.
# FROM phusion/passenger-full:<VERSION>
# Or, instead of the 'full' variant, use one of these:

#FROM phusion/passenger-ruby19:<VERSION>
#FROM phusion/passenger-ruby20:<VERSION>
#FROM phusion/passenger-ruby21:<VERSION>
#FROM phusion/passenger-ruby22:<VERSION>
#FROM phusion/passenger-jruby17:<VERSION>
#FROM phusion/passenger-nodejs:<VERSION>
#FROM phusion/passenger-customizable:<VERSION>

FROM phusion/passenger-ruby22

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

##################
# APT operations #
##################

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

########################
# Application specific #
########################

# Install PhantomJS
# RUN curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 > phantomjs-1.9.8-linux-x86_64.tar.bz2 && tar xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2 && mv phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin/ && rm -f phantomjs-1.9.8-linux-x86_64.tar.bz2 && rm -rf phantomjs-1.9.8-linux-x86_64/bin/phantomjs

# The image has an app user with UID 9999 and home directory /home/app.
# Your application is supposed to run as this user.
# Even though Docker itself provides some isolation from the host OS, running applications without root privileges is good security practice.
# Your application should be placed inside /home/app.

ENV APP_HOME /home/app

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install -j4

ADD . $APP_HOME
