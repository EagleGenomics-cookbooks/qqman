# Tests to check if the infrastructure we expect is available

describe file('/usr/local/lib/R/site-library/qqman') do
  it { should be_directory }
end

describe file('/usr/local/lib/R/site-library/qqman/DESCRIPTION') do
  it { should be_file }
end

describe command('R --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match(/R version 3.4.1/) }
end

describe command('Rscript -e \'packageVersion("qqman")\'') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match(/0.1.4/) }
end

describe os_env('QQMAN_VERSION') do
  its('content') { should eq '0.1.4' }
end
