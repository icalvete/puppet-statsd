class statsd::service {

  service { 'statsd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => false,
  }
}
