class statsd::config {

  file { 'statsd_config':
    content => template('statsd/Config.js.erb'),
    path    => "${statsd::params::nodejs_modules}/statsd/Config.js",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
