module PupModGen
  class PupMod
    attr_accessor :name
    attr_accessor :template_path

    def initialize(name, options={})
      self.name = name
      self.template_path = File.expand_path('../../../templates', __FILE__)
      self.template_path ||= options[:template_path]
    end

    def generate(filename)
      full_filename = File.join(self.template_path, "#{filename}.pp.erb")
      template = ERB.new(File.open(full_filename).read)
      template.result(binding)
    end
  end
end

