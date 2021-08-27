#!/bin/sh

# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$MYKEY" \
--output android/key.zip android/key.zip.gpg && cd android && jar xvf key.zip && cd -