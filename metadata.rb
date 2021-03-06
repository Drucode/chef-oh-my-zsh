name             'oh-my-zsh'
maintainer       'SendGrid'
maintainer_email 'operations@sendgrid.com'
license          'All rights reserved'
description      'Installs/Configures oh-my-zsh'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'git', '~> 0.9.0' # FIXME: Newer versions cause: HTTP Request Returned 500 Internal Server Error: '1.0.' does not match 'x.y.z' or 'x.y'
depends          'minitest-handler', '~> 0.2.1'
depends          'zsh', '~> 1.0.0'
