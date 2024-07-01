# SSH client configuration
file { '.ssh/config':
    ensure  => file
    content => @(EOF)
HOST 54.237.23.215
        IdentifyFile ~/.ssh/school
        PrefferedAuthentications publickey
        PasswordAuthentication no
EOF
    mode    => '0600'
    owner   => 'ubuntu'
    group   => 'ubuntu'
}
