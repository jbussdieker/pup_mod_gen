require "pup_mod_gen/options"
require "pup_mod_gen/pmodule"
require "erb"
require "fileutils"

module PupModGen
  def self.generate(options={})
    name = options[:name]
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
