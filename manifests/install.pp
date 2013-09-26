class statsd::install {

  nodejs::npm{'nodeunit':}
  nodejs::npm{'statsd':
    index   => 'stats',
    publish => true,
    daemon  => true
  }
}
