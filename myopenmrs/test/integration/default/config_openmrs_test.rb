# InSpec test for recipe .::config_openmrs

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

#unless os.windows?
  # This is an example test, replace with your own test.
#  describe user('root'), :skip do
#    it { should exist }
#  end
#end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
#  it { should_not be_listening }
#end
describe package('openjdk-8-jdk') do
  it { should be_installed }
end
describe package('tomcat8') do
  it { should be_installed }
end
describe port(8080) do
  it { should be_listening }
end
describe http('http://localhost:8080/openmrs/') do
  its('status') { should cmp 302 }
end

