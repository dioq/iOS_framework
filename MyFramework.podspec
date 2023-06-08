Pod::Spec.new do |s|
  s.name         = "MyFramework"    #存储库名称
  s.version      = "0.0.2"      #版本号，与tag值一致
  s.summary      = "这是一次测试制作Framework"  #简介
  s.description  = "制作Framework,时隔好多年再一次制作Framework当时的步骤都忘了,又重新查了一遍资料。这次做完就要做笔记了"  #描述
  s.homepage     = "https://github.com/dioq/MyFramework"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }  #开源协议
  s.author       = { "Dio Brand" => "zhendong2011@live.cn" }  #作者
  s.platform     = :ios, "15.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/dioq/MyFramework.git", :tag => "#{s.version}" }        #存储库的git地址，以及tag值
  s.source_files =  "MyFramework","*.{h,m}" #需要托管的源代码路径
  s.requires_arc = true #是否支持ARC
end