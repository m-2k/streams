
% N2O PROTOCOL

-define(OPS1(Mod), type=[], obj=[], module=Mod, ver=1, id=[]).
-define(OPS, ?OPS1([])).

-record(core, {operation=[], resource=[], module=[], req=[], method=[], vsn=[], api_key=[] }).
-record(ctx,  {user=[]}).
-record(cmd,  {?OPS}).

-define(KVS_API, join, dir, fold, get, put, append).
-define(N2O_API, insert_top, insert_bottom, wire).
-define(MQS_API, sub, pub).
-define(BPE_API, start, amend, complete, until).

-define(CORE_API,   [{1,  kvs,    [?KVS_API]},
                     {2,  mqs,    [?MQS_API]},
                     {3,  n2o,    [?N2O_API]},
                     {4,  bpe,    [?BPE_API]}]).

