## Ruby Fast

In Erik Michaels-Ober's great talk, 'Writing Fast Ruby'. he presented us with many idioms that lead to faster running Ruby code. He inspired me to document these to let more people know. I try to link to real commits so people can see that this can really have benefits in the real world. This does not mean you can always blindly replace one with another. It depends on the context.

Let's write faster code, together! <3

Template

```ruby
require 'benchmark/ips'

def fast
end

def slow
end

Benchmark.ips do |x|
  x.report('fast code description') { fast }
  x.report('slow code description') { slow }
  x.compare!
end
```