train_seats = [
  {
    :ticket_number => "РМ2010398 050298",
    :route => "Москва -> Петушки",
    :passenger => "Венедикт В. Ерофеев",
    :passport => "45 99 505281"
  },
{
  :ticket_number => "РМ2010399 050298",
  :route => "Павловский Посад -> Орехово-Зуево",
  :passenger => "Иннокентий П. Шниперсон",
  :passport => "46 01 192872"
}  ,
{
  :ticket_number => "РМ2010399 050298",
  :route => "Москва -> Владимир",
  :passenger => "Иван В. Бунша",
  :passport => "47 33 912876"
}
]

train_seats.each.with_index(1) do |passenger, index|
  puts "* * * Место № #{index} * * * "
  puts "Билет № #{passenger[:ticket_number]}"
  puts "Маршрут: #{passenger[:route]}"
  puts "Пассажир: #{passenger[:passenger]}"
  puts "Паспорт: #{passenger[:passport]}"
  puts
  puts
end
