% Facts: fruit and its color
color(apple, red).
color(strawberry, red).
color(cherry, red).
color(banana, yellow).
color(mango, yellow).
color(orange, orange).
color(grape, green).
color(watermelon, green).
color(blueberry, blue).

% Rule: find fruits of a particular color
fruit_with_color(Fruit, Color) :-
    color(Fruit, Color).
