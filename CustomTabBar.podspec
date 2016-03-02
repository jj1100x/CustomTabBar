Pod::Spec.new do |s|
  s.name         = "CustomTabBar"
  s.version      = "0.2.1"
  s.summary      = "Create custom TabBar"
  s.homepage     = "https://github.com/jj1100x/CustomTabBar"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { "jj1100x" => "junktym123@gmail.com" }
  s.ios.deployment_target = "9.0"
  s.source                = { :git => "https://github.com/jj1100x/CustomTabBar.git", :tag => "v#{s.version}" }
  s.requires_arc = true
  s.source_files          = "CustomTabBar/*.{h,swift}"
end
