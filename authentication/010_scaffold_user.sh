source ./rrp-lib.sh
NAME='user'

function up () {
    ${SCRIPT_DIR}/generate scaffold ${NAME} name:string username:string password:string email:string
    rake db:migrate
}

function down () {
    echo
}

function edit_model () {
    cat >> ${TOP_DIR}/app/models/${NAME}.rb <<EOF

  validates :name, :presence => true,
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
EOF
    $EDITOR ${TOP_DIR}/app/models/${NAME}.rb
}

up
edit_model