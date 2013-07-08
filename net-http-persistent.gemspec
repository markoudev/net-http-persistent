# encoding: utf-8
version = nil
File.open(File.expand_path('../lib/net/http/persistent.rb', __FILE__)) { |f|
  f.each_line { |line|
    if line =~ /^\s*VERSION = ['"](.+?)['"]/
      version = $1
      break
    end
  }
}

Gem::Specification.new do |s|
  s.name    = 'net-http-persistent'
  s.version = version
  s.summary = 'Persistent connections for Net::HTTP'
  s.authors = ['Eric Hodel']
  s.email   = 'drbrain@segment7.net'
  s.files   = Dir['{bin,lib,test,spec}/**/*', 'README*']
end
