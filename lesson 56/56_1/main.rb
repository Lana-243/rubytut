require 'io/console'
# ВНИМАНИЕ! Это почта, с которой будет отправлено письмо, замените на свою почту
# и выберите подходящие настройки ниже (для разных провайдеров почты разные
# настройки).
my_mail = "svetaisupova@gmail.com"

# Спрашиваем пароль от почты, с которой будет отправлено письмо. Вместо обычного
# gets используем специальный метод из библиотеки 'io/console', который скрывает
# вводимые символы (чтобы не палить пароль, если вдруг кто-то смотрит).
puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

# Спрашиваем у пользователя адрес электронной почты получателя письма
puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp

puts "Что указать в качестве темы письма?"
subject = STDIN.gets.chomp

# Наконец, спрашиваем у пользователя, что написать в письме. Весь введенный
# пользователем текст мы преобразуем в правильную кодировку, чтобы не было
# сюрпризов при использовании русских букв.
puts "Что написать в письме?"
body = STDIN.gets.encode("UTF-8").chomp

# Отправляем письмо, используя класс Pony из библиотеки pony
Pony.mail(
  subject: subject, # тема письма
  body: body, # текст письма, его тело
  to: send_to, # кому отправить письмо
  from: my_mail, # от кого письмо (наш обратный адрес)

  # Ниже идут настройки Pony для почтового ящика на mail.ru. Подробнее об опциях
  # Pony для других сервисов см. документацию:
  #
  # https://github.com/benprew/pony
  # via: :smtp,
  # via_options: {
  #   address: 'smtp.mail.ru', # это хост, сервер отправки почты
  #   port: '465', # порт
  #   tls: true, # если сервер работает в режиме TLS
  #   user_name: my_mail, # используем наш адрес почты как логин
  #   password: password, # задаем введенный в консоли пароль
  #   authentication: :plain # "обычный" тип авторизации по паролю
  # }

# Настройки Pony для ящика на gmail.com
#
via: :smtp,
via_options: {
  address: 'smtp.gmail.com',
  port: '587',
  enable_starttls_auto: true,
  user_name: my_mail,
  password: password,
  authentication: :plain,
}
#
# Настройки Pony для почтового ящика на yandex.ru
#
# via: :smtp,
# via_options: {
#   address: 'smtp.yandex.ru',
#   port: '465',
#   enable_starttls_auto: true,
#   tls: true,
#   user_name: my_mail,
#   password: password,
#   authentication: :plain,
# }
#
# О том, какие настройки нужно задавать для вашего почтового ящика, если он у
# вас не на mail.ru, не gmail.com и не на yandex.ru, смотрите в документации
# вашего почтового провайдера про подключение почтовых клиентов по STMP.
#
# Или просто заведите тестовый ящик на одном из сервисо, ради такого дела :)
)

puts "Письмо отправлено!"
