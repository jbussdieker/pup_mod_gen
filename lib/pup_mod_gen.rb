require "rubygems"
require File.expand_path('../pup_mod_gen/pup_mod', __FILE__)
require "erb"
require "fileutils"

module PupModGen
  def self.generate(name)
    dir_name = File.join(name, "manifests")
    FileUtils.mkdir_p dir_name
    ["init", "setup", "package", "services", "config"].each do |type|
      File.open(File.join(dir_name, "#{type}.pp"), "w") {|f|
        f.write PupMod.new(name).generate(type)
      }
    end
  end
end
