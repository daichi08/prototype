@reset = User.all
@reset.each do |f|
  f.gacha_count = 0
end
@reset.save