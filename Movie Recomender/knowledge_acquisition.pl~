%add(assert) and remove(retract) info
add_movie(Movie, Genre, Year) :-
    assert(movie(Movie, Genre, Year)).

add_user_preference(User, Genre) :-
    assert(user_preference(User, Genre)).

remove_user_preference(User, Genre) :-
    retract(user_preference(User, Genre)).

remove_movie(Movie, Genre, Year):-
    retract(movie(Movie, Genre, Year)).
