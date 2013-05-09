Pod::Spec.new do |s|
  s.name         = 'StringScore'
  s.version      = '0.0.2'
  s.summary      = 'StringScore is an Objective-C library which provides super fast fuzzy string matching/scoring.'
  s.homepage     = 'https://github.com/thetron/StringScore'
  s.license      = { :type => 'MIT', :file => 'README.md' }
  s.author       = { "Nicholas Bruning" => "nicholas@bruning.com.au" }
  s.source       = { :git => 'https://github.com/w-m/StringScore.git', :commit => "346f47f19815f02e519f4420e76aca69ab098a2e" }
  s.source_files = 'NSString+Score.{h,m}'
  s.requires_arc = true
end
