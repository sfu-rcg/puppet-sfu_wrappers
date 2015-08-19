# Class: sfu_wrappers::foreman::sudoers
#
class sfu_wrappers::foreman::profiled($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::profiled::script', $configs)
  }
}
