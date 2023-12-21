% our inferenceEngine contains rules for recommendation
%recommend based on preference
recommend_movie(User, Movie) :-
    user_preference(User, Genre),
    movie(Movie, Genre, _).

%recommend newer movies
recommend_newer_movie(User, Movie) :-
    user_preference(User, Genre),
    movie(Movie,Genre,Year),
    current_year(CurrentYear),
    Year > CurrentYear - 5. % to recommend movies released in the past 5 years
