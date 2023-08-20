//* filter the PLAYER nodes if their BMI is higher than 25
MATCH (players:PLAYER) //* select all of the node with the lable PLAYERS
WHERE (players.weight / (players.height * players.height)) > 25 //* filter the all players
RETURN players 

//* filter the players if their weight is more than 112 Kg then show the first " Two " players  
MATCH (players:PLAYER)
WHERE players.weight > 112 //* filtration
RETURN players
LIMIT 2

//* the same thing as the one above but skip the first Two and show the next " Four " players  
MATCH (players:PLAYER)
WHERE players.weight > 112
RETURN players 
SKIP 2
LIMIT 4

//* Ordering the results by youngest to oldest (lower to higher)
MATCH (players:PLAYER)
WHERE players.weight > 112
RETURN players 
ORDER BY players.age ASC

//* Ordering the results by oldest to youngest (higher to lower)
MATCH (players:PLAYER)
WHERE player.weight > 112  
RETURN player 
ORDER BY player.age DESC

//* Finding multiple nodes with different lables
MATCH (players:PLAYER) , (coaches:COACH)
WHERE players.weight > 112 
RETURN player , coaches //* return both

