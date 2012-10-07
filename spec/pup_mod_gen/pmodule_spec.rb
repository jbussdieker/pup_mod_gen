require 'rspec'
require 'pup_mod_gen/pmodule'

describe PupModGen::Pmodule do
  it 'populates name' do
    mod = PupModGen::Pmodule.new("test", {})
    mod.name.should eq("test")
  end

  it 'create empty config if non specified' do
    mod = PupModGen::Pmodule.new("test", {})
    mod.options.should eq({:config=>{}})
  end
end

