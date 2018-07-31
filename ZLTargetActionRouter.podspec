
Pod::Spec.new do |s|

s.name         = "ZLTargetActionRouter"
s.version      = "0.0.1"
s.summary      = "ZLTargetActionRouter项目跳转的中转站"
s.homepage     = "https://github.com/WQiOS/ZLTargetActionRouter"
s.license      = "MIT"
s.author             = { "王强" => "1570375769@qq.com" }
s.platform     = :ios, "8.0" #平台及支持的最低版本
s.requires_arc = true # 是否启用ARC
s.source       = { :git => "https://github.com/WQiOS/ZLTargetActionRouter.git", :tag => "#{s.version}" }

s.ios.framework  = 'UIKit'

s.source_files = "ZLTargetActionRouter/*.{h,m}"

end

