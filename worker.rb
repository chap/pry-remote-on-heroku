require 'pry-remote'

puts 'worker starting...'
test_var = {foo:'bar'}
other_test_var = 7

binding.remote_pry
