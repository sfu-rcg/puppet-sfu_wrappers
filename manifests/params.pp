# == Class sfu_wrapper::params
#
# This class is meant to be called from sfu_wrapper
# It sets variables according to platform.
#
class sfu_wrappers::params {
  case $::osfamily {
    'redhat': {
      case $::operatingsystem {
        CentOS: {
          case $::operatingsystemmajrelease {
            6: {  }
            7: {  }
            default: {
              fail("${::operatingsystem} version ${::operatingsystemmajrelease} not supported")
            }
          }
        }
        default: { 
          fail("${::operatingsystem} not supported")
        }
      }
    }
    default: { 
      fail("${::osfamily} not supported")
    }
  }
}
