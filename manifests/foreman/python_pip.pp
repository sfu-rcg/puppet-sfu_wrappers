# Class: sfu_wrappers::foreman::python_pip
#
class sfu_wrappers::foreman::python_pip($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::python::pip', $configs)
  }
}
