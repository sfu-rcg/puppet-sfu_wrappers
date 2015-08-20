# Class: sfu_wrappers::foreman::sudoers
#
class sfu_wrappers::foreman::profiled($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    Class['sfu_wrappers::foreman::profiled'] -> User<| $title == 'consul' |>
    create_resources('::profiled::script', $configs)
  }
}
