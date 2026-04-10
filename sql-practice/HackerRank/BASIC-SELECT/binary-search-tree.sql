-- HackerRank SQL Practice

-- problem: table BST, two columns: N and P, 
where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node.
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
-- Link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem


-- My Answer

SELECT N,
CASE 
     WHEN P IS NULL THEN 'Root'
     WHEN N NOT IN(SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
     ELSE 'Inner'
END
FROM BST
ORDER BY N;

-- Note 
트리 문제지만 실제로는 다른 행에서 나를 참조하는지에 대해 판단이 필요