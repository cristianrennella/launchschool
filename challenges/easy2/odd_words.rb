def odd_words(set_of_characters)
  set_of_characters[-1] = ''

  result = []
  set_of_characters.split(' ').each_with_index do |value, key|
    next if value.length > 20
    value = key.odd? ? value.reverse : value
    result << value
  end
  result.join(' ') + '.'
end

p odd_words("whats the matter with kansas.")