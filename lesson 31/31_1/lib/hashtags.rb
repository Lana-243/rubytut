def hashtags(text)
  text.scan(/#[[:word:]-]+/)
end
