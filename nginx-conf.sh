#!/bin/sh

# use this inside 'server { ... }'
#
# include spammers.nginx.conf;
# if($bad_referer) {
#   return 444;
# }

conf='./spammers.nginx.conf'

echo 'map $http_referer $bad_referer {' > $conf
echo '  default 0;' >> $conf

for line in `cat spammers.txt`
do
  echo '  "~'$line'" 1;' >> $conf
done

echo '}' >> $conf
