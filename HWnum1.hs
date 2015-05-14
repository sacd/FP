module TrivialFunctions where

 // Факториал
	factorial::Int->Int
	factorial 0 = 1
	factorial n = n * factorial (n-1)
	
//Фибаначи
	fibonacci::Int->Int
	fibonacci 0 = 0;
	fibonacci 1 = 1;
	fibonacci n = fibonacci (n-1) + fibonacci (n-2)
	
// функция аккермана
	ack::Int->Int->Int
	ack 0 n = n + 1
	ack m 0 = ack (m-1) 1
	ack m n = ack (m-1) (ack m (n-1))
// считаем аккермана
	main = do
		putStrLn (show (ack 2 3))
