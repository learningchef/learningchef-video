if os.debian?
  describe package('atom') do
    it { should be_installed }
  end
end

if os.name == 'mac_os_x'
  describe file('/Applications/Atom.app') do
    it { should exist }
  end
end
