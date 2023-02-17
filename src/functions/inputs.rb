COVER_OPTIONS = %w[good bad].freeze
def input_cover
  loop do
    print 'Cover State (good, bad):'
    cover_state = gets.chomp
    return cover_state if COVER_OPTIONS.include? cover_state

    puts 'Invalid Cover State you can send (good, bad) only'
  end
end

def input_publish_date
  loop do
    print 'Publish Date [YYYY-MM-DD]: '
    publish_date = gets.chomp
    begin
      Date.parse(publish_date)
      return publish_date
    rescue StandardError
      puts 'ERROR: INVALID DATE'
    end
  end
end

def input_last_played_date
  loop do
    print 'Last Played Date [YYYY-MM-DD]: '
    last_played_at = gets.chomp
    begin
      Date.parse(last_played_at)
      return last_played_at
    rescue StandardError
      puts 'ERROR: INVALID DATE'
    end
  end
end
