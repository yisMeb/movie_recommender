:- use_module(library(pce)).
:- use_module(library(pce_style_item)).

% GUI Initialization
start_gui :-
    new(@main, dialog('Movie Recommender')),
    send(@main, append, new(@label, label('Enter your username:'))),
    send(@main, append, new(@username, text_item(username, ''))),
    send(@main, append, button('Get Recommendation', message(@prolog, get_recommendation))),
    send(@main, append, new(@recommendation, text_item(recommendation, ''))),

    send(@main, append, button('Quit', message(@main, destroy))),
    send(@main, open).


% Consult all required files
:- consult('knowledge_base.pl').
:- consult('inference_engine.pl').
:- consult('knowledge_acquisition.pl').
:- consult('explanation_module.pl').

% Predicate to get a movie recommendation for a user
get_movie_recommendation(User, Recommendation, Explanation) :-
    % Use the recommendation logic from the inference engine
    recommend_movie(User, Recommendation),

    % Provide an explanation for the recommendation
    explain_recommendation(User, Recommendation, Explanation).

% Predicate to get a newer movie recommendation for a user
get_newer_movie_recommendation(User, Recommendation, Explanation) :-
    % Use the recommendation logic from the inference engine
    recommend_newer_movie(User, Recommendation),

    % Provide an explanation for the recommendation
    explain_newer_recommendation(User, Recommendation, Explanation).

%Button click event handler
get_recommendation :-
    get(@username, selection, Username),
    get_movie_recommendation(Username, Recommendation, _Explanation),
    send(@recommendation, selection, Recommendation).

% Entry point to start the GUI
start_gui :-
    start_gui.
