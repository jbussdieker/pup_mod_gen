# PupModGen

[![Build Status](https://secure.travis-ci.org/jbussdieker/pup_mod_gen.png)](http://travis-ci.org/jbussdieker/pup_mod_gen)

PupModGen makes puppetizing packages easier by using templates and information from existing configurations.

## Installation

Add this line to your application's Gemfile:

    gem 'pup_mod_gen'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pup_mod_gen

## Usage

Command-line options:

`````
Usage: pup_mod_gen [options]
    -p                               Include package template
    -d, --deb FILE                   Static debian package file. This will be copied to the modules files.
    -s                               Include service template
    -c, --config FILE                Config files to track. These will be add to files.
    -h, --help                       Show this message
`````

This will make a basic puppet recipe for nginx:

    pup_mod_gen nginx -p -s -c /etc/nginx/nginx.conf -c /etc/nginx/sites-available/default

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

