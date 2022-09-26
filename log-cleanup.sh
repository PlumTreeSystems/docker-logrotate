#!/bin/bash

find $TPATH -name \*.log -type f > /tmp/logrotate.sh

sed -i 's/^/> /' /tmp/logrotate.sh

sed -i '1 i\#!/bin/bash' /tmp/logrotate.sh

chmod +x /tmp/logrotate.sh

cd /tmp

./logrotate.sh

rm logrotate.sh