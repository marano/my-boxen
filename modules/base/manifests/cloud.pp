class base::cloud {
  package {
    [
      'dropbox',
      'evernote',
      'google-drive'
    ]: provider => 'brewcask'
  }
}
