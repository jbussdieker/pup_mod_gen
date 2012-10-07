require "rubygems"
require File.expand_path('../pup_mod_gen/pup_mod', __FILE__)
require "erb"
require "fileutils"

module PupModGen
  def self.generate(name)
    FileUtils.mkdir name
    ["init", "setup", "package", "services", "config"].each do |type|
      File.open(File.join(name, "#{type}.pp"), "w") {|f|
        f.write PupMod.new(name).generate(type)
      }
    end
  end
end
