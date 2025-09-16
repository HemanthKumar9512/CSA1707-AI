% Knowledge base: diseases and their symptoms
symptom(flu, fever).
symptom(flu, cough).
symptom(flu, sore_throat).
symptom(flu, runny_nose).

symptom(cold, sneezing).
symptom(cold, runny_nose).
symptom(cold, mild_cough).

symptom(covid19, fever).
symptom(covid19, cough).
symptom(covid19, loss_of_taste).
symptom(covid19, difficulty_breathing).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).

% Rule: A disease is possible if patient has all symptoms
has_disease(Disease, PatientSymptoms) :-
    setof(S, symptom(Disease, S), Required),
    subset(Required, PatientSymptoms).

% Utility: subset check
subset([], _).
subset([H|T], List) :-
    member(H, List),
    subset(T, List).

% Main diagnosis rule
diagnose(PatientSymptoms, Disease) :-
    has_disease(Disease, PatientSymptoms).
