require 'rspec'
require 'pup_mod_gen/version'

describe PupModGen::VERSION do
  it 'is a valid version' do
    version = Gem::Version.new(PupModGen::VERSION)
    version.should be_an_instance_of Gem::Version
  end
end

