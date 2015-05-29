# Class: sfu_wrappers::foreman::sudoers
#
class sfu_wrappers::foreman::sudoers($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::sudo::conf', $configs)
  }
}
