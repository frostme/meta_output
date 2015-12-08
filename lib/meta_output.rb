require "meta_output/version"
require "meta_output/string_output"

module MetaOutput
  def self.included(base)
    base.send :extend, StringOutput
  end
end

ActiveRecord::Base.send :include, MetaOutput
