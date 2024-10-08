%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% AWS Supply Chain is a cloud-based application that works with your
%% enterprise resource planning (ERP) and supply chain management systems.
%%
%% Using AWS Supply Chain, you can connect and extract your inventory,
%% supply, and demand related data from existing ERP or supply chain systems
%% into a single data model.
%%
%% The AWS Supply Chain API supports configuration data import for Supply
%% Planning.
%%
%% All AWS Supply chain API operations are Amazon-authenticated and
%% certificate-signed. They not only require the use of the AWS SDK, but also
%% allow for the exclusive use of AWS Identity and Access Management users
%% and roles to help facilitate access, trust, and permission policies.
-module(aws_supplychain).

-export([create_bill_of_materials_import_job/3,
         create_bill_of_materials_import_job/4,
         get_bill_of_materials_import_job/3,
         get_bill_of_materials_import_job/5,
         get_bill_of_materials_import_job/6,
         send_data_integration_event/3,
         send_data_integration_event/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% bill_of_materials_import_job() :: #{
%%   <<"instanceId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"message">> => [string()],
%%   <<"s3uri">> => string(),
%%   <<"status">> => list(any())
%% }
-type bill_of_materials_import_job() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_bill_of_materials_import_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"s3uri">> := string()
%% }
-type create_bill_of_materials_import_job_request() :: #{binary() => any()}.


%% Example:
%% create_bill_of_materials_import_job_response() :: #{
%%   <<"jobId">> => string()
%% }
-type create_bill_of_materials_import_job_response() :: #{binary() => any()}.

%% Example:
%% get_bill_of_materials_import_job_request() :: #{}
-type get_bill_of_materials_import_job_request() :: #{}.


%% Example:
%% get_bill_of_materials_import_job_response() :: #{
%%   <<"job">> => bill_of_materials_import_job()
%% }
-type get_bill_of_materials_import_job_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_data_integration_event_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> := string(),
%%   <<"eventGroupId">> := string(),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"eventType">> := list(any())
%% }
-type send_data_integration_event_request() :: #{binary() => any()}.


%% Example:
%% send_data_integration_event_response() :: #{
%%   <<"eventId">> => string()
%% }
-type send_data_integration_event_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_bill_of_materials_import_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_bill_of_materials_import_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type send_data_integration_event_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc CreateBillOfMaterialsImportJob creates an import job for the Product
%% Bill Of Materials (BOM) entity.
%%
%% For information on the product_bom entity, see the AWS Supply Chain User
%% Guide.
%%
%% The CSV file must be located in an Amazon S3 location accessible to AWS
%% Supply Chain. It is recommended to use the same Amazon S3 bucket created
%% during your AWS Supply Chain instance creation.
-spec create_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), create_bill_of_materials_import_job_request()) ->
    {ok, create_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bill_of_materials_import_job_errors(), tuple()}.
create_bill_of_materials_import_job(Client, InstanceId, Input) ->
    create_bill_of_materials_import_job(Client, InstanceId, Input, []).

-spec create_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), create_bill_of_materials_import_job_request(), proplists:proplist()) ->
    {ok, create_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bill_of_materials_import_job_errors(), tuple()}.
create_bill_of_materials_import_job(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/api/configuration/instances/", aws_util:encode_uri(InstanceId), "/bill-of-materials-import-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get status and details of a BillOfMaterialsImportJob.
-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId)
  when is_map(Client) ->
    get_bill_of_materials_import_job(Client, InstanceId, JobId, #{}, #{}).

-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap, []).

-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/configuration/instances/", aws_util:encode_uri(InstanceId), "/bill-of-materials-import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Send the transactional data payload for the event with real-time data
%% for analysis or monitoring.
%%
%% The real-time data events are stored in an Amazon Web Services service
%% before being processed and stored in data lake.
%% New data events are synced with data lake at 5 PM GMT everyday. The
%% updated transactional data is available in data lake after ingestion.
-spec send_data_integration_event(aws_client:aws_client(), binary() | list(), send_data_integration_event_request()) ->
    {ok, send_data_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_data_integration_event_errors(), tuple()}.
send_data_integration_event(Client, InstanceId, Input) ->
    send_data_integration_event(Client, InstanceId, Input, []).

-spec send_data_integration_event(aws_client:aws_client(), binary() | list(), send_data_integration_event_request(), proplists:proplist()) ->
    {ok, send_data_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_data_integration_event_errors(), tuple()}.
send_data_integration_event(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/api-data/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"scn">>},
    Host = build_host(<<"scn">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
