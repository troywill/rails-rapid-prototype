#!/bin/bash
source ./rrp-lib.sh
# rails generate controller welcome index login logout # if using authentication
rails generate controller welcome index
${EDITOR} ${TOP_DIR}/config/routes.rb
mv -iv ${TOP_DIR}/public/index.html /tmp/
