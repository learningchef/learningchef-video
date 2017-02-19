describe file("#{ENV['HOME']}/stone.txt") do
  it { should be_file }
  its('content') { should match('Written in stone') }
end
