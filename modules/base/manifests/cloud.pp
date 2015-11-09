class base::cloud {
  include googledrive

  package {
    [
      'dropbox'
    ]: provider => 'brewcask'
  }
}
