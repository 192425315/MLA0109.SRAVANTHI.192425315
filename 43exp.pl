has_hair(dog).
has_hair(cat).
has_feathers(sparrow).
has_feathers(eagle).

mammal(X) :- has_hair(X).
bird(X)   :- has_feathers(X).

% Example:
% ?- mammal(dog).
% ?- bird(sparrow).
% ?- bird(dog).  (no)
