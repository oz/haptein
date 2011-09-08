$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'haptein'

run Rack::Cascade.new([Haptein::Routes.spec, Haptein::App])
