# InSpec test for recipe python::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe package "python" do
  it { should be_installed }
end

describe package "python-pip" do
  it { should be_installed }
end
