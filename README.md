# MyFramework
制作 Framework 并上传到 CocoaPods

## 1. 制作 framework 库
直接在 Xcode 里 Framework & Library 里 Frameworks 创建一个 target     </br> 
就像 DioFramework      </br> 
创建成功后 在 这个 target --> Build Phases --> Headers 里暴露出外界可以引用的头文件

## 2. 上传 framework 到 cocoapods 仓库
### 注册Trunkpod (注册过就不需要注册了)
trunk register 邮箱 '用户名' --description='描述'

### 创建 pod 仓库描述文件
pod spec create DioFramework

### 修改 pod 仓库描述信息
DioFramework.podspec

### 检查修改信息是否正确
pod lib lint DioFramework.podspec  --use-libraries  --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'  </br> 
pod spec lint DioFramework.podspec --allow-warnings

### 上传仓库到 cocoapods
pod trunk push DioFramework.podspec --allow-warnings

### 注意上传前要把 git 仓库内容 push到 远程仓库,而且 tag 要和 xxx.podspec 里的 spec.version 一致
git tag '0.0.1'   </br>
git push --tags
