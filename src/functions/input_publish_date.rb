def input_publish_date
  loop do
    print 'Publish Date: '
    publish_date = gets.chomp
    begin
      Date.parse(publish_date)
      return publish_date
    rescue StandardError
      puts 'ERROR: INVALID DATE'
    end
  end
end
