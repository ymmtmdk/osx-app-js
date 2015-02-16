rule '.js' => '.coffee' do |t|
  sh "coffee -c #{t.source}"
end

rule '.app' => '.js' do |t|
  sh "rm -rf #{t.name}"
  sh "osacompile -s -l JavaScript -o #{t.name} #{t.source}"
end

task script: 'win2.js' do
  sh 'osascript win2.js'
end

task default: 'win.app'
