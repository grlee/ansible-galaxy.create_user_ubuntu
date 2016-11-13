#!/bin/bash

random_password=$(dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev)
passwd $1<<EOM
$random_password
$random_password
EOM