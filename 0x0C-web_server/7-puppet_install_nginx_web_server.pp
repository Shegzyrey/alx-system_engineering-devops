#puppet nginx_web_server install

package { 'nginx':
    ensure => 'installed'
}

file { '/var/www/html/index.nginx-debian.html':
    content => 'Hello World',
}

file_line { 'redirection-301':
    ensure => 'present'
    path   => '/etc/nginx/sites-available/default'
    after  => 'server_name_;'
    line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;'
}

service { 'nginx':
    ensure  => running
    require => Package['nginx']
}
