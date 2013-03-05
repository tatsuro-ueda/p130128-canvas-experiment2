# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'coffeescript', input: 'spec/coffeescripts', output: 'spec/javascripts'

# Guardfile
guard 'livereload' do
  watch(%r{app/assets/javascripts/.+\.js})
  watch(%r{spec/javascripts/.+\.js})
end