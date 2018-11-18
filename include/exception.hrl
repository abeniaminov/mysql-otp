-ifdef(OTP_RELEASE). %% this implies 21 or higher
-define(EXCEPTION(Class, Reason, Stacktrace), Class:Reason:Stacktrace).
-define(EXCEPTION(Class, Reason, Stacktrace, N), Class:Reason:Stacktrace when N >= 1).
-define(GET_STACK(Stacktrace), Stacktrace).
-else.
-define(EXCEPTION(Class, Reason, _), Class:Reason).
-define(EXCEPTION(Class, Reason, _, N), Class:Reason when N >= 1).
-define(GET_STACK(_), erlang:get_stacktrace()).
-endif.