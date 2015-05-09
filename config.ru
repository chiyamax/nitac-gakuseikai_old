require 'rack'
require 'rack/contrib/try_static'

# Build static files when booting
`bundle exec middleman build`

use Rack::TryStatic, 
    :root => 'build',
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

