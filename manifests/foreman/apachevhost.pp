class sfu_wrappers::foreman::apachevhost($vhosts = {},) {
  validate_hash($vhosts)
  create_resources(::apache::vhost, $vhosts)
  firewall { '080 allow http and https access':
    port   => [ '80', '443' ],
    proto  => tcp,
    action => accept,
  }
}
