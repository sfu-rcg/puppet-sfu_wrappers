# Class: sfu_wrappers::foreman::consul::check
#
class sfu_wrappers::foreman::consul::check($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::consul::check', $configs)
  }
}
