# Class: statsd
#
# Parameters:
#
# Actions:
#
# Requires:
#
# class{'nodejs'}
#
# Usage:
#
class statsd (

  $graph_vip             = $statsd::params::graphite_vip,
  $graph_port            = $statsd::params::graphite_port,
  $port                  = $statsd::params::statsd_port,
  $stastd_flush_interval = $statsd::params::stastd_flush_interval

) inherits statsd::params {

  anchor{'statsd::begin':
    before => Class['statsd::install']
  }

  class{'statsd::install':
    require => Anchor['statsd::begin'],
  }

  class{'statsd::config':
    require => Class['statsd::install'],
    notify  => Class['statsd::service'],
  }

  class{'statsd::service':
    require => Class['statsd::config'],
  }

  anchor{'statsd::end':
    require => Class['statsd::service']
  }
}
