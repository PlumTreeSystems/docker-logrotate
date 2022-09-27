#!/bin/bash

find $TPATH -name \*.log -type f > /tmp/logrotate.sh

sed -i 's/^/> /' /tmp/logrotate.sh

sed -i '1 i\#!/bin/bash' /tmp/logrotate.sh

chmod +x /tmp/logrotate.sh

cd /tmp

./logrotate.sh

if [[ $? -ne 0 ]]; then
    echo "`date` - Log rotation failed" >> /tmp/logrotate.log
else
    echo "`date` - Log rotation successful" >> /tmp/logrotate.log
fi

rm logrotate.sh