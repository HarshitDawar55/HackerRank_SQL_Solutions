select 
    n,
    case 
        when p is NULL then "Root"
        when n in (select p from bst) then "Inner"
        else "Leaf"
        END AS  description
    from BST 
order by n;