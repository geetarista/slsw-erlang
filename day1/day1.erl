% This is a comment

2 + 2.

2 + 2.0.

"string".

[1, 2, 3].

% A string is a list.
[72, 97, 32, 72, 97, 32, 72, 97].

% Variables start with capital and are immutable.
Var = 1.

% Atoms

red.

Pill = blue.
Pill.

[1, 2, 3].

[1, 2, "three"].

List = [1, 2, 3].

% Tuples

{one, two, three}.

Origin = {0, 0}.

{name, "Spaceman Spiff"}.

{comic_strip, {name, "Calvin and Hobbes"}, {character, "Spaceman Spiff"}}.

% Pattern matching

Person = {person, {name, "Agent Smith"}, {profession, "Killing programs"}}.
{person, {name, Name}, {profession, Profession}} = Person.
Name.
Profession.

[Head | Tail] = [1, 2, 3].
Head.
Tail.

[One, Two|Rest] = [1, 2, 3].
One.
Two.
Rest.

% Not enough elements, and pattern won't match:
% [X|Rest] = [].

% Bit matching

W = 1.
X = 2.
Y = 3.
Z = 4.

% Pack
All = <<W:3, X:3, Y:5, Z:5>>.

% Unpack
<<A:3, B:3, C:5, D:5>> = All.
