require 'optparse'

module PupModGen
  module Options
    def self.parse(args)
      options = {:config => []}
      OptionParser.new do |opts|
        opts.banner = "Usage: pup_mod_gen [options] module_name"

        opts.on("-p", "Include package template") do |v|
          options[:package] = v
        end

        opts.on("-d", "--deb FILE", "Static debian package file. This will be copied to the modules files.") do |v|
          options[:deb] = v
        end

        opts.on("-j", "--jar FILE", "Static jar file. This will be copied to the modules files.") do |v|
          options[:jar] = v
        end

        opts.on("-s", "Include service template") do |v|
          options[:service] = v
        end

        opts.on("-c", "--config FILE", "Config files to track. These will be add to files.") do |v|
          options[:config] << v
        end

        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
      end.parse!(args)
      options[:name] = args.first
      options
    end
  end
end
