%explain why the movie is being recommended
explain_recommendation(User, Movie, Explanation) :-
    user_preference(User, Genre),
    movie(Movie, Genre, _),
    format(atom(Explanation), 'Recommendation for ~w based on your preference for ~w genre.', [Movie, Genre]).

explain_newer_recommendation(User, Movie, Explanation) :-
    user_preference(User, Genre),
    movie(Movie, Genre, Year),
    current_year(CurrentYear),
    Year > CurrentYear - 5, % Recommends movies released in the last 5 years
    format(atom(Explanation), 'Recommendation for ~w based on your preference for ~w genre and newer release.', [Movie, Genre]).
