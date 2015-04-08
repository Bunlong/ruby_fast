require 'benchmark/ips'

URL = 'http://geekhmer.github.io/blog/2015/03/31/rails-5-timestamps-will-be-changed/'

def slow
  URL.gsub('http://', 'https://')
end

def fast
  URL.sub('http://', 'https://')
end

Benchmark.ips do |x|
  x.report('String#gsub') { slow }
  x.report('String#sub')  { fast }
  x.compare!
end
