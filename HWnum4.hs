--Задание 1.
--Выразите функцию map :: (a -> b) -> [a] -> [b] используя функцию foldl.
--То же самое, используя функцию foldr.

--Задание 2.
--Выразите функцию concatMap :: (a -> [b]) -> [a] -> [b] используя явную рекурсию.
--То же самоe, используя функцию foldl.
--То же самое, используя функцию foldr.
--Мишагин Артём 
--группа 11-203



module Main where
mapl op l = foldl f i l
where
f as a = as ++ [(op a)]
i :: [a]
i = []

mapr op l = foldr f i l
where
f a as = [(op a)] ++ as
i :: [a]
i = []

concatMap' :: (a -> [b]) -> [a] -> [b]
concatMap' _ [] = []
concatMap' op (x:xs) = (op x) ++ (concatMap' op xs)

concatMapl op l = foldl f i l
where
f as a = as ++ (op a)
i :: [a]
i = []

concatMapr op l = foldr f i l
where
f a as = (op a) ++ as
i :: [a]
i = []

oper :: Int -> [Int]
oper x = [x+1, x+2, x+3]
main = print ( concatMapl oper [0,1,2] )