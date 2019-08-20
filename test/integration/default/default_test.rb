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

describe pip('flask') do
  it { should be_installed }
   its('version') { should eq '0.10.1' }
end

describe pip('Jinja2') do
  it { should be_installed }
   its('version') { should eq '2.7.3' }
end

describe pip('MarkupSafe') do
  it { should be_installed }
   its('version') { should eq '0.23' }
end

describe pip('Werkzeug') do
  it { should be_installed }
   its('version') { should eq '0.9.6' }
end

describe pip('gnureadline') do
  it { should be_installed }
   its('version') { should eq '6.3.3' }
end

describe pip('itsdangerous') do
  it { should be_installed }
   its('version') { should eq '0.24' }
end

describe pip('rauth') do
  it { should be_installed }
   its('version') { should eq '0.7.0' }
end


describe pip('requests') do
  it { should be_installed }
   its('version') { should eq '2.3.0' }
end

describe pip('gunicorn') do
  it { should be_installed }
   its('version') { should eq '18.0' }
end

describe pip('wsgiref') do
  it { should be_installed }
   its('version') { should eq '0.1.2' }
end

describe pip('flask-SSLify') do
  it { should be_installed }
  its('version') { should eq '0.1.4' }
end

describe pip('pytest') do
  it { should be_installed }
  its('version') { should eq '2.5.2' }
end

describe pip('pytest-cov') do
  it { should be_installed }
  its('version') { should eq '1.6' }
end

describe pip('betamax') do
  it { should be_installed }
  its('version') { should eq '0.4.0' }
end

describe pip('flake8') do
  it { should be_installed }
  its('version') { should eq '2.1.0' }
end

describe pip('pep8') do
  it { should be_installed }
  its('version') { should eq '1.5.6' }
end


describe pip('pyflakes') do
  it { should be_installed }
  its('version') { should eq '0.8.1' }
end


describe pip('pyflakes') do
  it { should be_installed }
  its('version') { should eq '0.8.1' }
end
