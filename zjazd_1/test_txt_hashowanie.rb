require 'digest'
puts Digest::MD5.hexdigest File.open('testowy.txt').read
