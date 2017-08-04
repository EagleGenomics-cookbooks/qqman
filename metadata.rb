name             'qqman'
maintainer       'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license          'Apache-2.0'
description      'Installs/Configures qqman R package for QQ and Manhattan plots'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.5'

source_url 'https://github.com/EagleGenomics-cookbooks/qqman'
issues_url 'https://github.com/EagleGenomics-cookbooks/qqman/issues'

depends 'r'
depends 'magic_shell'
