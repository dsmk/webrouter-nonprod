# These are all defined in the base image
#
#FROM dsmk/web-router-base:latest
#FROM buist/websites-webrouter-base:2018.03.20
#FROM buist/websites-webrouter-base:2018.04.18
#FROM buist/websites-webrouter-base:2018.04.23
#FROM buist/websites-webrouter-base:2018.06.26
#FROM buist/websites-webrouter-base:2018.07.03
FROM buist/websites-webrouter-base:2018.07.11

# for now this is our split and everything below this is for a different location
#
# the final default landscape should be test
ARG landscape=syst

# These files remains in the landscape specific CodePipeline area.
ADD landscape/${landscape}/vars.sh /etc/nginx/vars.sh
ADD landscape/${landscape}/hosts.map.erb /etc/erb/nginx/hosts.map.erb
ADD landscape/${landscape}/maps /etc/nginx/maps

