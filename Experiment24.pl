% Facts: Recommended foods
recommended(diabetes, oats).
recommended(diabetes, green_vegetables).
recommended(diabetes, brown_rice).
recommended(diabetes, nuts).

recommended(hypertension, banana).
recommended(hypertension, spinach).
recommended(hypertension, beetroot).
recommended(hypertension, garlic).

recommended(obesity, salad).
recommended(obesity, fruits).
recommended(obesity, green_tea).
recommended(obesity, boiled_vegetables).

recommended(anemia, spinach).
recommended(anemia, red_meat).
recommended(anemia, beetroot).
recommended(anemia, pomegranate).

% Facts: Foods to avoid
avoid(diabetes, sugar).
avoid(diabetes, white_rice).
avoid(diabetes, sweets).

avoid(hypertension, salt).
avoid(hypertension, pickles).
avoid(hypertension, processed_foods).

avoid(obesity, junk_food).
avoid(obesity, fried_food).
avoid(obesity, sugary_drinks).

avoid(anemia, tea).
avoid(anemia, coffee).

% Rules
diet(Disease, Food) :-
    recommended(Disease, Food).

restriction(Disease, Food) :-
    avoid(Disease, Food).
