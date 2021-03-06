
# Практика R. 1.
# Автор: Кузнецов Никита
#

#define permutation without replacement

perm<- function(n, r){
  return(factorial(n)/factorial(n - r))
}permp

#task 1
#Рассчитайте вероятность угадать код на подъезде, состоящий из 3 цифр, если одна из
#цифр Вам известна (порядок нажатий не имеет значения).

P1 = 1/choose(9,2);
P1

#task 2
#Из набора домино выбирается одна костяшка. Какова вероятность того, что сумма очков
#на ней будет равна 6?

n = 28
na = 4
P2=na/n
P2

#task3
#В предыдущей задаче предположим, что до выбора у Вас уже имеется 5 костяшек - 6-3, 3-0, 3-1, 5-5, 2-1. #Ответьте на вопрос предыдущей задаче.
n-=5
P2=na/n
P2

#task4
#Среди 20 деталей 4 дефектные. Взяты наугад 3 детали. Какова вероятность, что а) все
#детали дефектные? б) ровно 2 детали дефектные?

P4a=choose(4,3)*choose(16,0)/choose(20,3)
P4a

P4b=choose(9,2)*choose(16,1)/choose(20,3)
P4b

#task5
#Фабрика выпускает сумки. В среднем на 150 качественных сумок приходится 12 сумок со
#скрытыми дефектами. Найдите вероятность того, что купленная сумка окажется
#некачественной

n=150+12
na=12
P5=na/n
P5

#task6
#Абитуриент не знает 15 вопросов программы из 45. В билете 2 вопроса Какова
#вероятность того, что он вытянет билет, где оба вопроса ему известны?
na=45-15
n=45
P6=choose(na,2)/choose(n,2)
P6

#task7
#Из колоды в 52 карты выбирается 2. Какова вероятность, что обе карты - тузы?
P7=choose(4,2)/choose(52,2)

#task8
#Вагон поезда содержит 36 мест, по 4 места в купе. Какова вероятность того, что
#случайным образом купленные 2 билета окажутся в одном купе?

P8 = 1/36/4
P8

#task9
#На торговой площадке представлены 12 приборов данной фирмы, из них 7 - высшего
#класса точности. Для демонстрации произвольно берут 4 прибора из 12. Какова
#вероятность, что а) все они окажутся высшего класса? б) ровно 3 из них высшего класса?
n=12
na=7
P9a=choose(na)/choose(12,4)
P9a

P9b = choose(7,3)*choose(5,1)/choose(12,4)
P9b

#task10
#Извлекают 2 карты из колоды (36 карт). Какова вероятность, что а) обе пики? б) обе
#карты одной масти?

P10=1/4
P10

#task11
#На полке в случайном порядке расставлены 40 книг, среди них трехтомник А.С.Пушкина.
#Найти вероятность того, что эти тома стоят в порядке возрастания номеров слева
#направо (но не обязательно рядом).
P11=choose(40,3)/perm(40,3)
P11

#ЗАДАНИЕ ДЛЯ ИНТЕРЕСУЮЩИХСЯ

# Теоретическая вероятность выпадения на правильной игральной кости 6 очков равна 1/6

# Номер испытания
n = 0

# Количество выпадений 6 очков
k = 0

# Последовательность абсолютных ошибок
absolutEr = c()

# Общее количество испытаний
N = 100

# Последовательно проводим N испытаний, после каждого испытания пересчитывая относительную частоту и перерисовывая график
for (i in 1:N){
	# result - имитация подбрасявания кубика, количество очков
	result = ceiling(runif(1, max=6))
	
	# Увеличиваем номер испытания
	n = n + 1

	# Если выпало 6 очков - увеличиваем k
	if (result == 6) k = k + 1

	# Обновляем относительную частоту
	w = k/n
	e = abs( 1/6 - w )

	# Добавляем обновленную ошибку в массив
	absolutEr = append(absolutEr,e)
	
	# Перерисовываем график
	plot(absolutEr , type="l")

	# Линия к которой должна стремится ошибка
	abline(h=0, col="red")
}

# Выводим первые 50 значений ошибки
head(absolutEr, n=100)










 

 