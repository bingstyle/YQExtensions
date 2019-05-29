

Pod::Spec.new do |s|
s.name         = "WXBExtensions"
s.version      = "0.2.5"
s.ios.deployment_target = '9.0'
s.summary      = "some extensions"
s.homepage     = "https://github.com/weixinbing/YQTools"
s.license              = { :type => "MIT", :file => "LICENSE" }
s.author             = { "weixb" => "183292352@qq.com" }
s.source       = { :git => "https://github.com/weixinbing/YQExtensions.git", :tag => s.version }
s.requires_arc = true

s.source_files = 'Extensions/*.swift'
s.swift_version = '4.2'

end