class sfu_wrappers::foreman::simpleloopfw ($simpleloop) {
  validate_hash($simpleloop)
  create_resources(sfu_fw::sourceip::simpleloop, $simpleloop)
}
