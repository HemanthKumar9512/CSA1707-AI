% student_teacher_db.pl
% Database of Students, Teachers, Subjects, and Codes

% Facts: student(Name, SubjectCode).
student('Alice', cs101).
student('Bob', cs102).
student('Charlie', cs101).
student('Diana', ma201).

% Facts: subject(SubjectCode, SubjectName).
subject(cs101, 'Artificial Intelligence').
subject(cs102, 'Computer Networks').
subject(ma201, 'Discrete Mathematics').

% Facts: teacher(Name, SubjectCode).
teacher('Dr. Smith', cs101).
teacher('Prof. Johnson', cs102).
teacher('Dr. Miller', ma201).

% -----------------------------
% Rules
% -----------------------------

% Find which subject a student is studying
student_subject(Student, SubjectName) :-
    student(Student, Code),
    subject(Code, SubjectName).

% Find which teacher teaches a student
student_teacher(Student, Teacher) :-
    student(Student, Code),
    teacher(Teacher, Code).

% Find all students under a teacher
teacher_students(Teacher, Student) :-
    teacher(Teacher, Code),
    student(Student, Code).
