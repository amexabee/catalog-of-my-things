require 'json'
require 'fileutils'

def file_read(title)
  if File.exist?("./data/#{title}.json")
    JSON.parse(File.read("./data/#{title}.json"))
  else
    []
  end
end
