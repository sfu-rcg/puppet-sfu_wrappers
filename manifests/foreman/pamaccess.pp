# Class: sfu_wrappers::foreman::pamaccess
#
class sfu_wrappers::foreman::pamaccess($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::pam::access', $configs)
  }
}
