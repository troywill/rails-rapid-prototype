source ./rrp-lib.sh
rails generate controller welcome index login logout view1 view2
${EDITOR} ${TOP_DIR}/config/routes.rb
mv -iv ${TOP_DIR}/public/index.html /tmp/
