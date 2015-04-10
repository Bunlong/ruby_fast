require 'benchmark/ips'

ARRAY = [*1..100]

def fast
  ARRAY.reverse.detect { |x| (x % 10).zero? }
end

def slow
  ARRAY.select { |x| (x % 10).zero? }.last
end

Benchmark.ips do |x|
  x.report('Enumerable#reverse.detect') { fast }
  x.report('Enumerable#select.last')    { slow }
  x.compare!
end
