COVER_OPTIONS = %w[good bad].freeze
def input_cover
  loop do
    print 'Cover State (good, bad):'
    cover_state = gets.chomp
    return cover_state if COVER_OPTIONS.include? cover_state

    puts 'Invalid Cover State you can send (good, bad) only'
  end
end
