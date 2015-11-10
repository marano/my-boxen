class essentials::cloud {
  include googledrive

  package {
    [
      'dropbox'
    ]: provider => 'brewcask'
  }
}
