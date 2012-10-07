require "rubygems"
require File.expand_path('../pup_mod_gen/pmodule', __FILE__)
require "erb"
require "fileutils"

module PupModGen
  NORMAL = 0
  FULL = 1

  def self.generate(name, options={})
    man_dir = File.join(name, "manifests")
    files_dir = File.join(name, "files")
    FileUtils.mkdir_p man_dir
    FileUtils.mkdir_p files_dir
    ["init", "setup", "package", "services", "config"].each do |type|
      File.open(File.join(man_dir, "#{type}.pp"), "w") {|f|
        f.write Pmodule.new(name, options).generate(type)
      }
    end
  end
end
