# Class: sfu_wrappers::foreman::nfs_mount
#
class sfu_wrappers::foreman::nfs_mount($configs = {}) {
  validate_hash($configs)
  if !empty($configs) {
    create_resources('::nfs::client::mount', $configs)
  }
}
