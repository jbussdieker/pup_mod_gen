require 'rspec'
require 'pup_mod_gen'

describe PupModGen do
  it 'generate should work' do
    PupModGen.generate(:name => "tmp/test_blank")
  end
end
