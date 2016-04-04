username, _groupname, _home_dir = user_vars

%w(aws-session-credentials yubikey-neo cfncli).each do |gem|
  rvm_gem gem do
    user username
  end
end
