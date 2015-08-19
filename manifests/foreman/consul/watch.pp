# Class: sfu_wrappers::foreman::consul::watch
#
class sfu_wrappers::foreman::consul::watch($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::consul::watch', $configs)
  }
}
