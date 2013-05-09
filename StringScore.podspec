Pod::Spec.new do |s|
  s.name         = 'StringScore'
  s.version      = '0.0.2'
  s.summary      = 'StringScore is an Objective-C library which provides super fast fuzzy string matching/scoring.'
  s.homepage     = 'https://github.com/thetron/StringScore'
  s.license      = { :type => 'MIT', :file => 'README.md' }
  s.author       = { "Nicholas Bruning" => "nicholas@bruning.com.au" }
  s.source       = { :git => 'https://github.com/w-m/StringScore.git', :commit => "b7034addb804d6d9bb7d41c1934ed7896ba62583" }
  s.source_files = 'NSString+Score.{h,m}'
  s.requires_arc = true
end
