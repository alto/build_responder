get '/xero', to: 'xero#status'
post '/xero', to: 'xero#status'
get '/builds/bro', to: 'builds#bro'
post '/builds', to: 'builds#check'
post '/intercom', to: 'builds#intercom'
get '/', to: 'home#index'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage