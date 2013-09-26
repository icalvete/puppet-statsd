# Class: statsd::params
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Usage:
#
class statsd::params {

  $graphite_vip          = hiera('graphite_vip')
  $graphite_port         = hiera('graphite_port')
  $statsd_port           = hiera('statsd_port')
  $nodejs_modules        = hiera('nodejs_modules')
  $stastd_flush_interval = hiera('stastd_flush_interval')
}
