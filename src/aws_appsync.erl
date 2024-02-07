%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AppSync provides API actions for creating and interacting with data
%% sources using GraphQL from your application.
-module(aws_appsync).

-export([associate_api/3,
         associate_api/4,
         associate_merged_graphql_api/3,
         associate_merged_graphql_api/4,
         associate_source_graphql_api/3,
         associate_source_graphql_api/4,
         create_api_cache/3,
         create_api_cache/4,
         create_api_key/3,
         create_api_key/4,
         create_data_source/3,
         create_data_source/4,
         create_domain_name/2,
         create_domain_name/3,
         create_function/3,
         create_function/4,
         create_graphql_api/2,
         create_graphql_api/3,
         create_resolver/4,
         create_resolver/5,
         create_type/3,
         create_type/4,
         delete_api_cache/3,
         delete_api_cache/4,
         delete_api_key/4,
         delete_api_key/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_domain_name/3,
         delete_domain_name/4,
         delete_function/4,
         delete_function/5,
         delete_graphql_api/3,
         delete_graphql_api/4,
         delete_resolver/5,
         delete_resolver/6,
         delete_type/4,
         delete_type/5,
         disassociate_api/3,
         disassociate_api/4,
         disassociate_merged_graphql_api/4,
         disassociate_merged_graphql_api/5,
         disassociate_source_graphql_api/4,
         disassociate_source_graphql_api/5,
         evaluate_code/2,
         evaluate_code/3,
         evaluate_mapping_template/2,
         evaluate_mapping_template/3,
         flush_api_cache/3,
         flush_api_cache/4,
         get_api_association/2,
         get_api_association/4,
         get_api_association/5,
         get_api_cache/2,
         get_api_cache/4,
         get_api_cache/5,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_data_source_introspection/2,
         get_data_source_introspection/4,
         get_data_source_introspection/5,
         get_domain_name/2,
         get_domain_name/4,
         get_domain_name/5,
         get_function/3,
         get_function/5,
         get_function/6,
         get_graphql_api/2,
         get_graphql_api/4,
         get_graphql_api/5,
         get_graphql_api_environment_variables/2,
         get_graphql_api_environment_variables/4,
         get_graphql_api_environment_variables/5,
         get_introspection_schema/3,
         get_introspection_schema/5,
         get_introspection_schema/6,
         get_resolver/4,
         get_resolver/6,
         get_resolver/7,
         get_schema_creation_status/2,
         get_schema_creation_status/4,
         get_schema_creation_status/5,
         get_source_api_association/3,
         get_source_api_association/5,
         get_source_api_association/6,
         get_type/4,
         get_type/6,
         get_type/7,
         list_api_keys/2,
         list_api_keys/4,
         list_api_keys/5,
         list_data_sources/2,
         list_data_sources/4,
         list_data_sources/5,
         list_domain_names/1,
         list_domain_names/3,
         list_domain_names/4,
         list_functions/2,
         list_functions/4,
         list_functions/5,
         list_graphql_apis/1,
         list_graphql_apis/3,
         list_graphql_apis/4,
         list_resolvers/3,
         list_resolvers/5,
         list_resolvers/6,
         list_resolvers_by_function/3,
         list_resolvers_by_function/5,
         list_resolvers_by_function/6,
         list_source_api_associations/2,
         list_source_api_associations/4,
         list_source_api_associations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_types/3,
         list_types/5,
         list_types/6,
         list_types_by_association/4,
         list_types_by_association/6,
         list_types_by_association/7,
         put_graphql_api_environment_variables/3,
         put_graphql_api_environment_variables/4,
         start_data_source_introspection/2,
         start_data_source_introspection/3,
         start_schema_creation/3,
         start_schema_creation/4,
         start_schema_merge/4,
         start_schema_merge/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_api_cache/3,
         update_api_cache/4,
         update_api_key/4,
         update_api_key/5,
         update_data_source/4,
         update_data_source/5,
         update_domain_name/3,
         update_domain_name/4,
         update_function/4,
         update_function/5,
         update_graphql_api/3,
         update_graphql_api/4,
         update_resolver/5,
         update_resolver/6,
         update_source_api_association/4,
         update_source_api_association/5,
         update_type/4,
         update_type/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Maps an endpoint to your custom domain.
associate_api(Client, DomainName, Input) ->
    associate_api(Client, DomainName, Input, []).
associate_api(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an association between a Merged API and source API using the
%% source API's identifier.
associate_merged_graphql_api(Client, SourceApiIdentifier, Input) ->
    associate_merged_graphql_api(Client, SourceApiIdentifier, Input, []).
associate_merged_graphql_api(Client, SourceApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sourceApis/", aws_util:encode_uri(SourceApiIdentifier), "/mergedApiAssociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an association between a Merged API and source API using the
%% Merged API's identifier.
associate_source_graphql_api(Client, MergedApiIdentifier, Input) ->
    associate_source_graphql_api(Client, MergedApiIdentifier, Input, []).
associate_source_graphql_api(Client, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a cache for the GraphQL API.
create_api_cache(Client, ApiId, Input) ->
    create_api_cache(Client, ApiId, Input, []).
create_api_cache(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a unique key that you can distribute to clients who invoke
%% your API.
create_api_key(Client, ApiId, Input) ->
    create_api_key(Client, ApiId, Input, []).
create_api_key(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `DataSource' object.
create_data_source(Client, ApiId, Input) ->
    create_data_source(Client, ApiId, Input, []).
create_data_source(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom `DomainName' object.
create_domain_name(Client, Input) ->
    create_domain_name(Client, Input, []).
create_domain_name(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domainnames"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Function' object.
%%
%% A function is a reusable entity. You can use multiple functions to compose
%% the resolver logic.
create_function(Client, ApiId, Input) ->
    create_function(Client, ApiId, Input, []).
create_function(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `GraphqlApi' object.
create_graphql_api(Client, Input) ->
    create_graphql_api(Client, Input, []).
create_graphql_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Resolver' object.
%%
%% A resolver converts incoming requests into a format that a data source can
%% understand, and converts the data source's responses into GraphQL.
create_resolver(Client, ApiId, TypeName, Input) ->
    create_resolver(Client, ApiId, TypeName, Input, []).
create_resolver(Client, ApiId, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Type' object.
create_type(Client, ApiId, Input) ->
    create_type(Client, ApiId, Input, []).
create_type(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an `ApiCache' object.
delete_api_cache(Client, ApiId, Input) ->
    delete_api_cache(Client, ApiId, Input, []).
delete_api_cache(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an API key.
delete_api_key(Client, ApiId, Id, Input) ->
    delete_api_key(Client, ApiId, Id, Input, []).
delete_api_key(Client, ApiId, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `DataSource' object.
delete_data_source(Client, ApiId, Name, Input) ->
    delete_data_source(Client, ApiId, Name, Input, []).
delete_data_source(Client, ApiId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom `DomainName' object.
delete_domain_name(Client, DomainName, Input) ->
    delete_domain_name(Client, DomainName, Input, []).
delete_domain_name(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Function'.
delete_function(Client, ApiId, FunctionId, Input) ->
    delete_function(Client, ApiId, FunctionId, Input, []).
delete_function(Client, ApiId, FunctionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `GraphqlApi' object.
delete_graphql_api(Client, ApiId, Input) ->
    delete_graphql_api(Client, ApiId, Input, []).
delete_graphql_api(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Resolver' object.
delete_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    delete_resolver(Client, ApiId, FieldName, TypeName, Input, []).
delete_resolver(Client, ApiId, FieldName, TypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Type' object.
delete_type(Client, ApiId, TypeName, Input) ->
    delete_type(Client, ApiId, TypeName, Input, []).
delete_type(Client, ApiId, TypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an `ApiAssociation' object from a custom domain.
disassociate_api(Client, DomainName, Input) ->
    disassociate_api(Client, DomainName, Input, []).
disassociate_api(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an association between a Merged API and source API using the
%% source API's identifier and the association ID.
disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input) ->
    disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input, []).
disassociate_merged_graphql_api(Client, AssociationId, SourceApiIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sourceApis/", aws_util:encode_uri(SourceApiIdentifier), "/mergedApiAssociations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an association between a Merged API and source API using the
%% Merged API's identifier and the association ID.
disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input) ->
    disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input, []).
disassociate_source_graphql_api(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Evaluates the given code and returns the response.
%%
%% The code definition requirements depend on the specified runtime. For
%% `APPSYNC_JS' runtimes, the code defines the request and response
%% functions. The request function takes the incoming request after a GraphQL
%% operation is parsed and converts it into a request configuration for the
%% selected data source operation. The response function interprets responses
%% from the data source and maps it to the shape of the GraphQL field output
%% type.
evaluate_code(Client, Input) ->
    evaluate_code(Client, Input, []).
evaluate_code(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/dataplane-evaluatecode"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Evaluates a given template and returns the response.
%%
%% The mapping template can be a request or response template.
%%
%% Request templates take the incoming request after a GraphQL operation is
%% parsed and convert it into a request configuration for the selected data
%% source operation. Response templates interpret responses from the data
%% source and map it to the shape of the GraphQL field output type.
%%
%% Mapping templates are written in the Apache Velocity Template Language
%% (VTL).
evaluate_mapping_template(Client, Input) ->
    evaluate_mapping_template(Client, Input, []).
evaluate_mapping_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/dataplane-evaluatetemplate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes an `ApiCache' object.
flush_api_cache(Client, ApiId, Input) ->
    flush_api_cache(Client, ApiId, Input, []).
flush_api_cache(Client, ApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/FlushCache"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves an `ApiAssociation' object.
get_api_association(Client, DomainName)
  when is_map(Client) ->
    get_api_association(Client, DomainName, #{}, #{}).

get_api_association(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_association(Client, DomainName, QueryMap, HeadersMap, []).

get_api_association(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), "/apiassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an `ApiCache' object.
get_api_cache(Client, ApiId)
  when is_map(Client) ->
    get_api_cache(Client, ApiId, #{}, #{}).

get_api_cache(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_cache(Client, ApiId, QueryMap, HeadersMap, []).

get_api_cache(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `DataSource' object.
get_data_source(Client, ApiId, Name)
  when is_map(Client) ->
    get_data_source(Client, ApiId, Name, #{}, #{}).

get_data_source(Client, ApiId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, ApiId, Name, QueryMap, HeadersMap, []).

get_data_source(Client, ApiId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the record of an existing introspection.
%%
%% If the retrieval is successful, the result of the instrospection will also
%% be returned. If the retrieval fails the operation, an error message will
%% be returned instead.
get_data_source_introspection(Client, IntrospectionId)
  when is_map(Client) ->
    get_data_source_introspection(Client, IntrospectionId, #{}, #{}).

get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap, []).

get_data_source_introspection(Client, IntrospectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datasources/introspections/", aws_util:encode_uri(IntrospectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeModelsSDL">>, maps:get(<<"includeModelsSDL">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a custom `DomainName' object.
get_domain_name(Client, DomainName)
  when is_map(Client) ->
    get_domain_name(Client, DomainName, #{}, #{}).

get_domain_name(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_name(Client, DomainName, QueryMap, HeadersMap, []).

get_domain_name(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a `Function'.
get_function(Client, ApiId, FunctionId)
  when is_map(Client) ->
    get_function(Client, ApiId, FunctionId, #{}, #{}).

get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, []).

get_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `GraphqlApi' object.
get_graphql_api(Client, ApiId)
  when is_map(Client) ->
    get_graphql_api(Client, ApiId, #{}, #{}).

get_graphql_api(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graphql_api(Client, ApiId, QueryMap, HeadersMap, []).

get_graphql_api(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of environmental variable key-value pairs
%% associated with an API by its ID value.
get_graphql_api_environment_variables(Client, ApiId)
  when is_map(Client) ->
    get_graphql_api_environment_variables(Client, ApiId, #{}, #{}).

get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap, []).

get_graphql_api_environment_variables(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/environmentVariables"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the introspection schema for a GraphQL API.
get_introspection_schema(Client, ApiId, Format)
  when is_map(Client) ->
    get_introspection_schema(Client, ApiId, Format, #{}, #{}).

get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap, []).

get_introspection_schema(Client, ApiId, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schema"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"includeDirectives">>, maps:get(<<"includeDirectives">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Resolver' object.
get_resolver(Client, ApiId, FieldName, TypeName)
  when is_map(Client) ->
    get_resolver(Client, ApiId, FieldName, TypeName, #{}, #{}).

get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap, []).

get_resolver(Client, ApiId, FieldName, TypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current status of a schema creation operation.
get_schema_creation_status(Client, ApiId)
  when is_map(Client) ->
    get_schema_creation_status(Client, ApiId, #{}, #{}).

get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap, []).

get_schema_creation_status(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schemacreation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `SourceApiAssociation' object.
get_source_api_association(Client, AssociationId, MergedApiIdentifier)
  when is_map(Client) ->
    get_source_api_association(Client, AssociationId, MergedApiIdentifier, #{}, #{}).

get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap, []).

get_source_api_association(Client, AssociationId, MergedApiIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Type' object.
get_type(Client, ApiId, TypeName, Format)
  when is_map(Client) ->
    get_type(Client, ApiId, TypeName, Format, #{}, #{}).

get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap, []).

get_type(Client, ApiId, TypeName, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the API keys for a given API.
%%
%% API keys are deleted automatically 60 days after they expire. However,
%% they may still be included in the response until they have actually been
%% deleted. You can safely call `DeleteApiKey' to manually delete a key
%% before it's automatically deleted.
list_api_keys(Client, ApiId)
  when is_map(Client) ->
    list_api_keys(Client, ApiId, #{}, #{}).

list_api_keys(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_api_keys(Client, ApiId, QueryMap, HeadersMap, []).

list_api_keys(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data sources for a given API.
list_data_sources(Client, ApiId)
  when is_map(Client) ->
    list_data_sources(Client, ApiId, #{}, #{}).

list_data_sources(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, ApiId, QueryMap, HeadersMap, []).

list_data_sources(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists multiple custom domain names.
list_domain_names(Client)
  when is_map(Client) ->
    list_domain_names(Client, #{}, #{}).

list_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_names(Client, QueryMap, HeadersMap, []).

list_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domainnames"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List multiple functions.
list_functions(Client, ApiId)
  when is_map(Client) ->
    list_functions(Client, ApiId, #{}, #{}).

list_functions(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, ApiId, QueryMap, HeadersMap, []).

list_functions(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your GraphQL APIs.
list_graphql_apis(Client)
  when is_map(Client) ->
    list_graphql_apis(Client, #{}, #{}).

list_graphql_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_graphql_apis(Client, QueryMap, HeadersMap, []).

list_graphql_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"apiType">>, maps:get(<<"apiType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owner">>, maps:get(<<"owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resolvers for a given API and type.
list_resolvers(Client, ApiId, TypeName)
  when is_map(Client) ->
    list_resolvers(Client, ApiId, TypeName, #{}, #{}).

list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap, []).

list_resolvers(Client, ApiId, TypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the resolvers that are associated with a specific function.
list_resolvers_by_function(Client, ApiId, FunctionId)
  when is_map(Client) ->
    list_resolvers_by_function(Client, ApiId, FunctionId, #{}, #{}).

list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, []).

list_resolvers_by_function(Client, ApiId, FunctionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), "/resolvers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the `SourceApiAssociationSummary' data.
list_source_api_associations(Client, ApiId)
  when is_map(Client) ->
    list_source_api_associations(Client, ApiId, #{}, #{}).

list_source_api_associations(Client, ApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_source_api_associations(Client, ApiId, QueryMap, HeadersMap, []).

list_source_api_associations(Client, ApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/sourceApiAssociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the types for a given API.
list_types(Client, ApiId, Format)
  when is_map(Client) ->
    list_types(Client, ApiId, Format, #{}, #{}).

list_types(Client, ApiId, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_types(Client, ApiId, Format, QueryMap, HeadersMap, []).

list_types(Client, ApiId, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists `Type' objects by the source API association ID.
list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format)
  when is_map(Client) ->
    list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, #{}, #{}).

list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap, []).

list_types_by_association(Client, AssociationId, MergedApiIdentifier, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), "/types"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a list of environmental variables in an API by its ID value.
%%
%% When creating an environmental variable, it must follow the constraints
%% below:
%%
%% <ul> <li> Both JavaScript and VTL templates support environmental
%% variables.
%%
%% </li> <li> Environmental variables are not evaluated before function
%% invocation.
%%
%% </li> <li> Environmental variables only support string values.
%%
%% </li> <li> Any defined value in an environmental variable is considered a
%% string literal and not expanded.
%%
%% </li> <li> Variable evaluations should ideally be performed in the
%% function code.
%%
%% </li> </ul> When creating an environmental variable key-value pair, it
%% must follow the additional constraints below:
%%
%% <ul> <li> Keys must begin with a letter.
%%
%% </li> <li> Keys must be at least two characters long.
%%
%% </li> <li> Keys can only contain letters, numbers, and the underscore
%% character (_).
%%
%% </li> <li> Values can be up to 512 characters long.
%%
%% </li> <li> You can configure up to 50 key-value pairs in a GraphQL API.
%%
%% </li> </ul> You can create a list of environmental variables by adding it
%% to the `environmentVariables' payload as a list in the format
%% `{&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;,
%% …}'. Note that each call of the
%% `PutGraphqlApiEnvironmentVariables' action will result in the
%% overwriting of the existing environmental variable list of that API. This
%% means the existing environmental variables will be lost. To avoid this,
%% you must include all existing and new environmental variables in the list
%% each time you call this action.
put_graphql_api_environment_variables(Client, ApiId, Input) ->
    put_graphql_api_environment_variables(Client, ApiId, Input, []).
put_graphql_api_environment_variables(Client, ApiId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/environmentVariables"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new introspection.
%%
%% Returns the `introspectionId' of the new introspection after its
%% creation.
start_data_source_introspection(Client, Input) ->
    start_data_source_introspection(Client, Input, []).
start_data_source_introspection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datasources/introspections"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new schema to your GraphQL API.
%%
%% This operation is asynchronous. Use to determine when it has completed.
start_schema_creation(Client, ApiId, Input) ->
    start_schema_creation(Client, ApiId, Input, []).
start_schema_creation(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/schemacreation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a merge operation.
%%
%% Returns a status that shows the result of the merge operation.
start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input) ->
    start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input, []).
start_schema_merge(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), "/merge"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tags a resource with user-supplied tags.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Untags a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the cache for the GraphQL API.
update_api_cache(Client, ApiId, Input) ->
    update_api_cache(Client, ApiId, Input, []).
update_api_cache(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/ApiCaches/update"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an API key.
%%
%% You can update the key as long as it's not deleted.
update_api_key(Client, ApiId, Id, Input) ->
    update_api_key(Client, ApiId, Id, Input, []).
update_api_key(Client, ApiId, Id, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/apikeys/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `DataSource' object.
update_data_source(Client, ApiId, Name, Input) ->
    update_data_source(Client, ApiId, Name, Input, []).
update_data_source(Client, ApiId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/datasources/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a custom `DomainName' object.
update_domain_name(Client, DomainName, Input) ->
    update_domain_name(Client, DomainName, Input, []).
update_domain_name(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domainnames/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Function' object.
update_function(Client, ApiId, FunctionId, Input) ->
    update_function(Client, ApiId, FunctionId, Input, []).
update_function(Client, ApiId, FunctionId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/functions/", aws_util:encode_uri(FunctionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `GraphqlApi' object.
update_graphql_api(Client, ApiId, Input) ->
    update_graphql_api(Client, ApiId, Input, []).
update_graphql_api(Client, ApiId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Resolver' object.
update_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    update_resolver(Client, ApiId, FieldName, TypeName, Input, []).
update_resolver(Client, ApiId, FieldName, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), "/resolvers/", aws_util:encode_uri(FieldName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates some of the configuration choices of a particular source API
%% association.
update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input) ->
    update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input, []).
update_source_api_association(Client, AssociationId, MergedApiIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v1/mergedApis/", aws_util:encode_uri(MergedApiIdentifier), "/sourceApiAssociations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Type' object.
update_type(Client, ApiId, TypeName, Input) ->
    update_type(Client, ApiId, TypeName, Input, []).
update_type(Client, ApiId, TypeName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apis/", aws_util:encode_uri(ApiId), "/types/", aws_util:encode_uri(TypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"appsync">>},
    Host = build_host(<<"appsync">>, Client1),
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
