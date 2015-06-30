# for i in [1..4]
i = 1

while i < 5
  height = $('#event-card' + "#{i}").height()
  $('#event-img' + "#{i}").height(height)
  i++
