-module(erl_is_odd).

-include_lib("eunit/include/eunit.hrl").
-include_lib("stdlib/include/assert.hrl").

-export([is_odd/1]).

-spec is_odd(erl_is_even:input()) -> boolean().
is_odd(IntegerOrBinOrStr) ->
    not erl_is_even:is_even(IntegerOrBinOrStr).

is_odd_test() ->
    ?assertNot(is_odd(0)),
    ?assertNot(is_odd(2)),
    ?assert(is_odd(1)),

    ?assertNot(is_odd("0")),
    ?assertNot(is_odd("2")),
    ?assert(is_odd("1")),

    ?assertNot(is_odd(<<"0">>)),
    ?assertNot(is_odd(<<"2">>)),
    ?assert(is_odd(<<"1">>)).
