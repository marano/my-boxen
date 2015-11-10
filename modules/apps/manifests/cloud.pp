class apps::cloud {
  include googledrive

  package {
    [
      'dropbox'
    ]: provider => 'brewcask'
  }
}
