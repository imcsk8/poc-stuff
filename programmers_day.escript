#!/usr/bin/env escript
%% -*- erlang -*-
%% By: Jorge Luna seguidor777@gmail.com

day_difference(D1, D2) ->
	%% Source: https://gist.github.com/zaphar/104903
    Days1 = calendar:date_to_gregorian_days(D1),
    Days2 = calendar:date_to_gregorian_days(D2),
    Days1 - Days2
.

main(_) ->
	{{Y, M, D}, _ } = calendar:local_time(),
	CurrentDate = {Y, M, D},

	%% Here comes the tricky part
	%% Reset the year to the first day
    BeginningOfYear = {Y, 1, 1},
	
	%% Obtain the difference
    DayOfYear = day_difference(CurrentDate, BeginningOfYear),
	
	if
		DayOfYear == 255 -> io:fwrite("Happy programmers day!!\n");
	    true -> io:fwrite("Happy normal day!!\n")
	end
.
