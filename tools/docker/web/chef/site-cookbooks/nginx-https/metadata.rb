name             'nginx-https'
maintainer       'Kieren Evans'
maintainer_email 'kevans@inviqa.com'
license          'Apache 2.0'
description      'Fixes up the nginx template for pre-1.1.11'
long_description 'The $https variable that is present in the nginx.conf template provided by the nginx cookbook is only valid in nginx v1.1.11 onwards. we are running a prior version.'
version          '0.1.0'

depends 'nginx'
