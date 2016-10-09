[
  [1, '自由記述問題'],
  [2, '二択問題'],
  [3, '三択問題'],
  [4, '四択問題']
].each do |id, name|
  AnswerStyle.create(
  id: id,
  name: name
  )
end