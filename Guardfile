# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'coffeescript', input: 'spec/coffeescripts', output: 'spec/javascripts'

# Guardfile
guard 'livereload' do
  # 下記の 1 行を追加
  watch(%r{spec/javascripts/.+\.js})
end