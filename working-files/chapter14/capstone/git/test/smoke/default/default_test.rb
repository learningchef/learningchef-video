describe(command('git --version')) do
  its('stdout') { should match(/git version/) }
end

if os.debian?
  describe(package('git')) do
    it { should be_installed }
  end
end

if os.family == 'darwin'
  describe(command('pkgutil --pkg-info=com.apple.pkg.CLTools_Executables')) do
    its('exit_status') { should be 0 }
  end
end
