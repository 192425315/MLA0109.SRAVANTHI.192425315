student(alice).
student(bob).
student(carol).

course(cs101, 'Artificial Intelligence').
course(cs102, 'Data Structures').
course(cs103, 'Operating Systems').

enrolled(alice, cs101).
enrolled(alice, cs102).
enrolled(bob,   cs101).
enrolled(carol, cs103).

% a) Which courses does a student take?
courses_of_student(Student, Course) :-
    enrolled(Student, Course).

% b) Which students are in a course?
students_in_course(Course, Student) :-
    enrolled(Student, Course).

% ?- courses_of_student(alice, C).
% ?- students_in_course(cs101, S).
