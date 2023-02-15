require 'json'
require 'fileutils'

def file_write(arr, title)
  FileUtils.mkdir_p('data')
  File.write("./data/#{title}.json", JSON.generate(arr))
  puts "#{title.capitalize} saved successfully"
end
