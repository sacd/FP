--Создать тип данных для бинарного дерева поиска (binary search tree), хранящего значения типа Int.
--Реализовать функцию подсчёта высоты этого дерева.
--Реализовать функцию суммирования всех элементов в дереве.
--Реализовать функцию поиска заданного элемента в дереве.
--Мишагин Артём 
--группа 11-203

type Tree = Empty | Node a (Tree a) (Tree a) deriving(Show, Eq, Read)

singleton :: a  -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a-> Tree a -> Tree a
treeInsert x Empty = singleton x
treeInsert (Node a l r)
	| x == a Node x l r
	| x >  a Node a l (treeInsert x r)
	| x <  a Node a (treeInsert x l) r

treeHeight :: Tree -> Integer
treeHeight Empty = 0;
treeHeight (Node x l r) = (max(treeHeight r)(treeHeight l)) + 1;