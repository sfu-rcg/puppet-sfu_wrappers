# Class: sfu_wrappers::foreman::consul::service
#
class sfu_wrappers::foreman::consul::service($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::consul::service', $configs)
  }
}
