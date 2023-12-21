%my movie facts(knowledge base)
:- dynamic movie/3. % i made it dynamic predicate so that it can be modified during program execution(assert/retreact)

movie(avengers, action, 2012).
movie(topgun, action, 2022).
movie(shawshank_redemption, drama, 1994).
movie(inception, sci_fi, 2010).
movie(the_matrix, sci_fi, 1999).
movie(titanic, romance, 1997).
movie(forest_gump, drama, 1994).
movie(die_hard, action, 1988).
movie(jurassic_park, adventure, 1993).
movie(the_dark_knight, action, 2008).
movie(pulp_fiction, crime, 1994).
movie(black_panther, action, 2018).
movie(the_shining, horror, 1980).
movie(et_the_extra_terrestrial, family, 1982).
movie(the_social_network, biography, 2010).
movie(la_la_land, musical, 2016).
movie(coco, animation, 2017).
movie(blade_runner, sci_fi, 1982).
current_year(2023).

%User Preferences
user_preference(yisak, action).
user_preference(wongel, drama).
user_preference(yonas, sci_fi).
user_preference(yonatan, romance).
user_preference(mike, adventure).
user_preference(alex, crime).
user_preference(ekram, horror).
user_preference(abebech, musical).
user_preference(yonas, family).
user_preference(wongel, animation).
