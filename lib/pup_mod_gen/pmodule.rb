module PupModGen
  class Pmodule
    attr_accessor :name
    attr_accessor :mode
    attr_accessor :options
    attr_accessor :template_path

    def initialize(name, options={})
      @name = name
      @template_path = File.expand_path('../../../data', __FILE__)
      @template_path ||= options[:template_path]
      @options = options
      @options[:config] ||= {}
    end

    def generate(filename)
      full_filename = File.join(@template_path, "#{filename}.pp.erb")
      template = ERB.new(File.open(full_filename).read)
      template.result(binding)
    end
  end
end

