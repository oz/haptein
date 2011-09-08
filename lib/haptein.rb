require 'pathname'

module Haptein

  autoload :App,    'haptein/app'
  autoload :Events, 'haptein/events'
  autoload :Routes, 'haptein/routes'

  # The application's root path
  # @return [Pathname]
  def self.root
    return @root_path if @root_path
    @root_path = Pathname.new(File.dirname(__FILE__) + '/..')
  end
end
