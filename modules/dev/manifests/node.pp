class dev::node {
  include nodejs

  nodejs::version { '4.2.2': }
  nodejs::version { '5.0.0': }
}
