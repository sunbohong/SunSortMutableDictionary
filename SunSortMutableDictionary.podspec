Pod::Spec.new do |s|
s.name = 'SunSortMutableDictionary'
s.version = '0.6.0'
s.license = 'MIT'
s.summary = '可以按照key进行排序的可变数组'
s.homepage = 'https://github.com/sunbohong/SunSortMutableDictionary'
s.authors = { '酷酷的哀殿' => 'sunbohong@gmail.com' }
s.source = { :git => 'https://github.com/sunbohong/SunSortMutableDictionary.git', :tag => s.version }

s.ios.deployment_target = '8.0'
s.source_files = 'Pod/Classes/**/*'
end
