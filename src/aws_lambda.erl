%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Lambda
%%
%% Overview
%%
%% Lambda is a compute service that lets you run code without provisioning or
%% managing servers.
%%
%% Lambda runs your code on a high-availability compute infrastructure and
%% performs all of the administration of the compute resources, including
%% server and operating system maintenance, capacity provisioning and
%% automatic scaling, code monitoring and logging. With Lambda, you can run
%% code for virtually any type of application or backend service. For more
%% information about the Lambda service, see What is Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/welcome.html in the Lambda
%% Developer Guide.
%%
%% The Lambda API Reference provides information about each of the API
%% methods, including details about the parameters in each API request and
%% response.
%%
%% You can use Software Development Kits (SDKs), Integrated Development
%% Environment (IDE) Toolkits, and command line tools to access the API. For
%% installation instructions, see Tools for Amazon Web Services:
%% http://aws.amazon.com/tools/.
%%
%% For a list of Region-specific endpoints that Lambda supports, see Lambda
%% endpoints and quotas :
%% https://docs.aws.amazon.com/general/latest/gr/lambda-service.html/ in the
%% Amazon Web Services General Reference..
%%
%% When making the API calls, you will need to authenticate your request by
%% providing a signature. Lambda supports signature version 4. For more
%% information, see Signature Version 4 signing process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html in
%% the Amazon Web Services General Reference..
%%
%% CA certificates
%%
%% Because Amazon Web Services SDKs use the CA certificates from your
%% computer, changes to the certificates on the Amazon Web Services servers
%% can cause connection failures when you attempt to use an SDK. You can
%% prevent these failures by keeping your computer's CA certificates and
%% operating system up-to-date. If you encounter this issue in a corporate
%% environment and do not manage your own computer, you might need to ask an
%% administrator to assist with the update process. The following list shows
%% minimum operating system and Java versions:
%%
%% <ul> <li> Microsoft Windows versions that have updates from January 2005
%% or later installed contain at least one of the required CAs in their trust
%% list.
%%
%% </li> <li> Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February
%% 2007), Mac OS X 10.5 (October 2007), and later versions contain at least
%% one of the required CAs in their trust list.
%%
%% </li> <li> Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5,
%% 6, and 7 all contain at least one of the required CAs in their default
%% trusted CA list.
%%
%% </li> <li> Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all
%% later versions, including Java 6 (December 2006), 7, and 8, contain at
%% least one of the required CAs in their default trusted CA list.
%%
%% </li> </ul> When accessing the Lambda management console or Lambda API
%% endpoints, whether through browsers or programmatically, you will need to
%% ensure your client machines support any of the following CAs:
%%
%% <ul> <li> Amazon Root CA 1
%%
%% </li> <li> Starfield Services Root Certificate Authority - G2
%%
%% </li> <li> Starfield Class 2 Certification Authority
%%
%% </li> </ul> Root certificates from the first two authorities are available
%% from Amazon trust services: https://www.amazontrust.com/repository/, but
%% keeping your computer up-to-date is the more straightforward solution. To
%% learn more about ACM-provided certificates, see Amazon Web Services
%% Certificate Manager FAQs.:
%% http://aws.amazon.com/certificate-manager/faqs/#certificates
-module(aws_lambda).

-export([add_layer_version_permission/4,
         add_layer_version_permission/5,
         add_permission/3,
         add_permission/4,
         create_alias/3,
         create_alias/4,
         create_code_signing_config/2,
         create_code_signing_config/3,
         create_event_source_mapping/2,
         create_event_source_mapping/3,
         create_function/2,
         create_function/3,
         create_function_url_config/3,
         create_function_url_config/4,
         delete_alias/4,
         delete_alias/5,
         delete_code_signing_config/3,
         delete_code_signing_config/4,
         delete_event_source_mapping/3,
         delete_event_source_mapping/4,
         delete_function/3,
         delete_function/4,
         delete_function_code_signing_config/3,
         delete_function_code_signing_config/4,
         delete_function_concurrency/3,
         delete_function_concurrency/4,
         delete_function_event_invoke_config/3,
         delete_function_event_invoke_config/4,
         delete_function_url_config/3,
         delete_function_url_config/4,
         delete_layer_version/4,
         delete_layer_version/5,
         delete_provisioned_concurrency_config/3,
         delete_provisioned_concurrency_config/4,
         get_account_settings/1,
         get_account_settings/3,
         get_account_settings/4,
         get_alias/3,
         get_alias/5,
         get_alias/6,
         get_code_signing_config/2,
         get_code_signing_config/4,
         get_code_signing_config/5,
         get_event_source_mapping/2,
         get_event_source_mapping/4,
         get_event_source_mapping/5,
         get_function/2,
         get_function/4,
         get_function/5,
         get_function_code_signing_config/2,
         get_function_code_signing_config/4,
         get_function_code_signing_config/5,
         get_function_concurrency/2,
         get_function_concurrency/4,
         get_function_concurrency/5,
         get_function_configuration/2,
         get_function_configuration/4,
         get_function_configuration/5,
         get_function_event_invoke_config/2,
         get_function_event_invoke_config/4,
         get_function_event_invoke_config/5,
         get_function_url_config/2,
         get_function_url_config/4,
         get_function_url_config/5,
         get_layer_version/3,
         get_layer_version/5,
         get_layer_version/6,
         get_layer_version_by_arn/2,
         get_layer_version_by_arn/4,
         get_layer_version_by_arn/5,
         get_layer_version_policy/3,
         get_layer_version_policy/5,
         get_layer_version_policy/6,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_provisioned_concurrency_config/3,
         get_provisioned_concurrency_config/5,
         get_provisioned_concurrency_config/6,
         get_runtime_management_config/2,
         get_runtime_management_config/4,
         get_runtime_management_config/5,
         invoke/3,
         invoke/4,
         invoke_async/3,
         invoke_async/4,
         invoke_with_response_stream/3,
         invoke_with_response_stream/4,
         list_aliases/2,
         list_aliases/4,
         list_aliases/5,
         list_code_signing_configs/1,
         list_code_signing_configs/3,
         list_code_signing_configs/4,
         list_event_source_mappings/1,
         list_event_source_mappings/3,
         list_event_source_mappings/4,
         list_function_event_invoke_configs/2,
         list_function_event_invoke_configs/4,
         list_function_event_invoke_configs/5,
         list_function_url_configs/2,
         list_function_url_configs/4,
         list_function_url_configs/5,
         list_functions/1,
         list_functions/3,
         list_functions/4,
         list_functions_by_code_signing_config/2,
         list_functions_by_code_signing_config/4,
         list_functions_by_code_signing_config/5,
         list_layer_versions/2,
         list_layer_versions/4,
         list_layer_versions/5,
         list_layers/1,
         list_layers/3,
         list_layers/4,
         list_provisioned_concurrency_configs/2,
         list_provisioned_concurrency_configs/4,
         list_provisioned_concurrency_configs/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_versions_by_function/2,
         list_versions_by_function/4,
         list_versions_by_function/5,
         publish_layer_version/3,
         publish_layer_version/4,
         publish_version/3,
         publish_version/4,
         put_function_code_signing_config/3,
         put_function_code_signing_config/4,
         put_function_concurrency/3,
         put_function_concurrency/4,
         put_function_event_invoke_config/3,
         put_function_event_invoke_config/4,
         put_provisioned_concurrency_config/3,
         put_provisioned_concurrency_config/4,
         put_runtime_management_config/3,
         put_runtime_management_config/4,
         remove_layer_version_permission/5,
         remove_layer_version_permission/6,
         remove_permission/4,
         remove_permission/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_alias/4,
         update_alias/5,
         update_code_signing_config/3,
         update_code_signing_config/4,
         update_event_source_mapping/3,
         update_event_source_mapping/4,
         update_function_code/3,
         update_function_code/4,
         update_function_configuration/3,
         update_function_configuration/4,
         update_function_event_invoke_config/3,
         update_function_event_invoke_config/4,
         update_function_url_config/3,
         update_function_url_config/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds permissions to the resource-based policy of a version of an
%% Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Use this action to grant layer usage permission to other accounts. You can
%% grant permission to a single account, all accounts in an organization, or
%% all Amazon Web Services accounts.
%%
%% To revoke permission, call `RemoveLayerVersionPermission' with the
%% statement ID that you specified when you added it.
add_layer_version_permission(Client, LayerName, VersionNumber, Input) ->
    add_layer_version_permission(Client, LayerName, VersionNumber, Input, []).
add_layer_version_permission(Client, LayerName, VersionNumber, Input0, Options0) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Grants an Amazon Web Service, Amazon Web Services account, or Amazon
%% Web Services organization permission to use a function.
%%
%% You can apply the policy at the function level, or specify a qualifier to
%% restrict access to a single version or alias. If you use a qualifier, the
%% invoker must use the full Amazon Resource Name (ARN) of that version or
%% alias to invoke the function. Note: Lambda does not support adding
%% policies to version $LATEST.
%%
%% To grant permission to another account, specify the account ID as the
%% `Principal'. To grant permission to an organization defined in
%% Organizations, specify the organization ID as the `PrincipalOrgID'.
%% For Amazon Web Services, the principal is a domain-style identifier that
%% the service defines, such as `s3.amazonaws.com' or
%% `sns.amazonaws.com'. For Amazon Web Services, you can also specify the
%% ARN of the associated resource as the `SourceArn'. If you grant
%% permission to a service principal without specifying the source, other
%% accounts could potentially configure resources in their account to invoke
%% your Lambda function.
%%
%% This operation adds a statement to a resource-based permissions policy for
%% the function. For more information about function policies, see Using
%% resource-based policies for Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html.
add_permission(Client, FunctionName, Input) ->
    add_permission(Client, FunctionName, Input, []).
add_permission(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
%% for a Lambda function version.
%%
%% Use aliases to provide clients with a function identifier that you can
%% update to invoke a different version.
%%
%% You can also map an alias to split invocation requests between two
%% versions. Use the `RoutingConfig' parameter to specify a second
%% version and the percentage of invocation requests that it receives.
create_alias(Client, FunctionName, Input) ->
    create_alias(Client, FunctionName, Input, []).
create_alias(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
    SuccessStatusCode = 201,
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

%% @doc Creates a code signing configuration.
%%
%% A code signing configuration:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html
%% defines a list of allowed signing profiles and defines the code-signing
%% validation policy (action to be taken if deployment validation checks
%% fail).
create_code_signing_config(Client, Input) ->
    create_code_signing_config(Client, Input, []).
create_code_signing_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-04-22/code-signing-configs/"],
    SuccessStatusCode = 201,
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

%% @doc Creates a mapping between an event source and an Lambda function.
%%
%% Lambda reads items from the event source and invokes the function.
%%
%% For details about how to configure different event sources, see the
%% following topics.
%%
%% <ul> <li> Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
%%
%% </li> <li> Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
%%
%% </li> <li> Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
%%
%% </li> <li> Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
%%
%% </li> <li> Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
%%
%% </li> <li> Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
%%
%% </li> <li> Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
%%
%% </li> </ul> The following error handling options are available only for
%% stream sources (DynamoDB and Kinesis):
%%
%% <ul> <li> `BisectBatchOnFunctionError' – If the function returns an
%% error, split the batch in two and retry.
%%
%% </li> <li> `DestinationConfig' – Send discarded records to an Amazon
%% SQS queue or Amazon SNS topic.
%%
%% </li> <li> `MaximumRecordAgeInSeconds' – Discard records older than
%% the specified age. The default value is infinite (-1). When set to
%% infinite (-1), failed records are retried until the record expires
%%
%% </li> <li> `MaximumRetryAttempts' – Discard records after the
%% specified number of retries. The default value is infinite (-1). When set
%% to infinite (-1), failed records are retried until the record expires.
%%
%% </li> <li> `ParallelizationFactor' – Process multiple batches from
%% each shard concurrently.
%%
%% </li> </ul> For information about which configuration parameters apply to
%% each event source, see the following topics.
%%
%% <ul> <li> Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
%%
%% </li> <li> Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
%%
%% </li> <li> Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
%%
%% </li> <li> Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
%%
%% </li> <li> Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
%%
%% </li> <li> Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
%%
%% </li> <li> Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
%%
%% </li> </ul>
create_event_source_mapping(Client, Input) ->
    create_event_source_mapping(Client, Input, []).
create_event_source_mapping(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 202,
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

%% @doc Creates a Lambda function.
%%
%% To create a function, you need a deployment package:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html
%% and an execution role:
%% https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.
%% The deployment package is a .zip file archive or container image that
%% contains your function code. The execution role grants the function
%% permission to use Amazon Web Services, such as Amazon CloudWatch Logs for
%% log streaming and X-Ray for request tracing.
%%
%% If the deployment package is a container image:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html, then you
%% set the package type to `Image'. For a container image, the code
%% property must include the URI of a container image in the Amazon ECR
%% registry. You do not need to specify the handler and runtime properties.
%%
%% If the deployment package is a .zip file archive:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip,
%% then you set the package type to `Zip'. For a .zip file archive, the
%% code property specifies the location of the .zip file. You must also
%% specify the handler and runtime properties. The code in the deployment
%% package must be compatible with the target instruction set architecture of
%% the function (`x86-64' or `arm64'). If you do not specify the
%% architecture, then the default value is `x86-64'.
%%
%% When you create a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute or so. During this time, you can't invoke or
%% modify the function. The `State', `StateReason', and
%% `StateReasonCode' fields in the response from
%% `GetFunctionConfiguration' indicate when the function is ready to
%% invoke. For more information, see Lambda function states:
%% https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html.
%%
%% A function has an unpublished version, and can have published versions and
%% aliases. The unpublished version changes when you update your
%% function's code and configuration. A published version is a snapshot
%% of your function code and configuration that can't be changed. An
%% alias is a named resource that maps to a version, and can be changed to
%% map to a different version. Use the `Publish' parameter to create
%% version `1' of your function from its initial configuration.
%%
%% The other parameters let you configure version-specific and function-level
%% settings. You can modify version-specific settings later with
%% `UpdateFunctionConfiguration'. Function-level settings apply to both
%% the unpublished and published versions of the function, and include tags
%% (`TagResource') and per-function concurrency limits
%% (`PutFunctionConcurrency').
%%
%% You can use code signing if your deployment package is a .zip file
%% archive. To enable code signing for this function, specify the ARN of a
%% code-signing configuration. When a user attempts to deploy a code package
%% with `UpdateFunctionCode', Lambda checks that the code package has a
%% valid signature from a trusted publisher. The code-signing configuration
%% includes set of signing profiles, which define the trusted publishers for
%% this function.
%%
%% If another Amazon Web Services account or an Amazon Web Service invokes
%% your function, use `AddPermission' to grant permission by creating a
%% resource-based Identity and Access Management (IAM) policy. You can grant
%% permissions at the function level, on a version, or on an alias.
%%
%% To invoke your function directly, use `Invoke'. To invoke your
%% function in response to events in other Amazon Web Services, create an
%% event source mapping (`CreateEventSourceMapping'), or configure a
%% function trigger in the other service. For more information, see Invoking
%% Lambda functions:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html.
create_function(Client, Input) ->
    create_function(Client, Input, []).
create_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions"],
    SuccessStatusCode = 201,
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

%% @doc Creates a Lambda function URL with the specified configuration
%% parameters.
%%
%% A function URL is a dedicated HTTP(S) endpoint that you can use to invoke
%% your function.
create_function_url_config(Client, FunctionName, Input) ->
    create_function_url_config(Client, FunctionName, Input, []).
create_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
delete_alias(Client, FunctionName, Name, Input) ->
    delete_alias(Client, FunctionName, Name, Input, []).
delete_alias(Client, FunctionName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the code signing configuration.
%%
%% You can delete the code signing configuration only if no function is using
%% it.
delete_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    delete_code_signing_config(Client, CodeSigningConfigArn, Input, []).
delete_code_signing_config(Client, CodeSigningConfigArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes an event source mapping:
%% https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
%%
%% When you delete an event source mapping, it enters a `Deleting' state
%% and might not be completely deleted for several seconds.
delete_event_source_mapping(Client, UUID, Input) ->
    delete_event_source_mapping(Client, UUID, Input, []).
delete_event_source_mapping(Client, UUID, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a Lambda function.
%%
%% To delete a specific function version, use the `Qualifier' parameter.
%% Otherwise, all versions and aliases are deleted. This doesn't require
%% the user to have explicit permissions for `DeleteAlias'.
%%
%% To delete Lambda event source mappings that invoke a function, use
%% `DeleteEventSourceMapping'. For Amazon Web Services and resources that
%% invoke your function directly, delete the trigger in the service where you
%% originally configured it.
delete_function(Client, FunctionName, Input) ->
    delete_function(Client, FunctionName, Input, []).
delete_function(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the code signing configuration from the function.
delete_function_code_signing_config(Client, FunctionName, Input) ->
    delete_function_code_signing_config(Client, FunctionName, Input, []).
delete_function_code_signing_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 204,
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

%% @doc Removes a concurrent execution limit from a function.
delete_function_concurrency(Client, FunctionName, Input) ->
    delete_function_concurrency(Client, FunctionName, Input, []).
delete_function_concurrency(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 204,
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

%% @doc Deletes the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
delete_function_event_invoke_config(Client, FunctionName, Input) ->
    delete_function_event_invoke_config(Client, FunctionName, Input, []).
delete_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function URL.
%%
%% When you delete a function URL, you can't recover it. Creating a new
%% function URL results in a different URL address.
delete_function_url_config(Client, FunctionName, Input) ->
    delete_function_url_config(Client, FunctionName, Input, []).
delete_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Deleted versions can no longer be viewed or added to functions. To avoid
%% breaking functions, a copy of the version remains in Lambda until no
%% functions refer to it.
delete_layer_version(Client, LayerName, VersionNumber, Input) ->
    delete_layer_version(Client, LayerName, VersionNumber, Input, []).
delete_layer_version(Client, LayerName, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the provisioned concurrency configuration for a function.
delete_provisioned_concurrency_config(Client, FunctionName, Input) ->
    delete_provisioned_concurrency_config(Client, FunctionName, Input, []).
delete_provisioned_concurrency_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about your account's limits:
%% https://docs.aws.amazon.com/lambda/latest/dg/limits.html and usage in an
%% Amazon Web Services Region.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, #{}, #{}).

get_account_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, QueryMap, HeadersMap, []).

get_account_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2016-08-19/account-settings/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
get_alias(Client, FunctionName, Name)
  when is_map(Client) ->
    get_alias(Client, FunctionName, Name, #{}, #{}).

get_alias(Client, FunctionName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_alias(Client, FunctionName, Name, QueryMap, HeadersMap, []).

get_alias(Client, FunctionName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified code signing configuration.
get_code_signing_config(Client, CodeSigningConfigArn)
  when is_map(Client) ->
    get_code_signing_config(Client, CodeSigningConfigArn, #{}, #{}).

get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, []).

get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about an event source mapping.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
get_event_source_mapping(Client, UUID)
  when is_map(Client) ->
    get_event_source_mapping(Client, UUID, #{}, #{}).

get_event_source_mapping(Client, UUID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_source_mapping(Client, UUID, QueryMap, HeadersMap, []).

get_event_source_mapping(Client, UUID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the function or function version, with a
%% link to download the deployment package that's valid for 10 minutes.
%%
%% If you specify a function version, only details that are specific to that
%% version are returned.
get_function(Client, FunctionName)
  when is_map(Client) ->
    get_function(Client, FunctionName, #{}, #{}).

get_function(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, FunctionName, QueryMap, HeadersMap, []).

get_function(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the code signing configuration for the specified function.
get_function_code_signing_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_code_signing_config(Client, FunctionName, #{}, #{}).

get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap, []).

get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about the reserved concurrency configuration for a
%% function.
%%
%% To set a concurrency limit for a function, use
%% `PutFunctionConcurrency'.
get_function_concurrency(Client, FunctionName)
  when is_map(Client) ->
    get_function_concurrency(Client, FunctionName, #{}, #{}).

get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap, []).

get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the version-specific settings of a Lambda function or
%% version.
%%
%% The output includes only options that can vary between versions of a
%% function. To modify these settings, use `UpdateFunctionConfiguration'.
%%
%% To get all of a function's details, including function-level settings,
%% use `GetFunction'.
get_function_configuration(Client, FunctionName)
  when is_map(Client) ->
    get_function_configuration(Client, FunctionName, #{}, #{}).

get_function_configuration(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_configuration(Client, FunctionName, QueryMap, HeadersMap, []).

get_function_configuration(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration for asynchronous invocation for a
%% function, version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
get_function_event_invoke_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_event_invoke_config(Client, FunctionName, #{}, #{}).

get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap, []).

get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function URL.
get_function_url_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_url_config(Client, FunctionName, #{}, #{}).

get_function_url_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_url_config(Client, FunctionName, QueryMap, HeadersMap, []).

get_function_url_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html,
%% with a link to download the layer archive that's valid for 10 minutes.
get_layer_version(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version(Client, LayerName, VersionNumber, #{}, #{}).

get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap, []).

get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html,
%% with a link to download the layer archive that's valid for 10 minutes.
get_layer_version_by_arn(Client, Arn)
  when is_map(Client) ->
    get_layer_version_by_arn(Client, Arn, #{}, #{}).

get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap, []).

get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers?find=LayerVersion"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the permission policy for a version of an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% For more information, see `AddLayerVersionPermission'.
get_layer_version_policy(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, #{}, #{}).

get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap, []).

get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource-based IAM policy:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
%% for a function, version, or alias.
get_policy(Client, FunctionName)
  when is_map(Client) ->
    get_policy(Client, FunctionName, #{}, #{}).

get_policy(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, FunctionName, QueryMap, HeadersMap, []).

get_policy(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the provisioned concurrency configuration for a
%% function's alias or version.
get_provisioned_concurrency_config(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_provisioned_concurrency_config(Client, FunctionName, Qualifier, #{}, #{}).

get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap, []).

get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the runtime management configuration for a function's
%% version.
%%
%% If the runtime update mode is Manual, this includes the ARN of the runtime
%% version and the runtime update mode. If the runtime update mode is Auto or
%% Function update, this includes the runtime update mode and `null' is
%% returned for the ARN. For more information, see Runtime updates:
%% https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html.
get_runtime_management_config(Client, FunctionName)
  when is_map(Client) ->
    get_runtime_management_config(Client, FunctionName, #{}, #{}).

get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap, []).

get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-07-20/functions/", aws_util:encode_uri(FunctionName), "/runtime-management-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes a Lambda function.
%%
%% You can invoke a function synchronously (and wait for the response), or
%% asynchronously. By default, Lambda invokes your function synchronously
%% (i.e. the`InvocationType' is `RequestResponse'). To invoke a
%% function asynchronously, set `InvocationType' to `Event'. Lambda
%% passes the `ClientContext' object to your function for synchronous
%% invocations only.
%%
%% For synchronous invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html, details
%% about the function response, including errors, are included in the
%% response body and headers. For either invocation type, you can find more
%% information in the execution log:
%% https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html and
%% trace: https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html.
%%
%% When an error occurs, your function may be invoked multiple times. Retry
%% behavior varies by error type, client, event source, and invocation type.
%% For example, if you invoke a function asynchronously and it returns an
%% error, Lambda executes the function up to two more times. For more
%% information, see Error handling and automatic retries in Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html.
%%
%% For asynchronous invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html, Lambda
%% adds events to a queue before sending them to your function. If your
%% function does not have enough capacity to keep up with the queue, events
%% may be lost. Occasionally, your function may receive the same event
%% multiple times, even if no error occurs. To retain events that were not
%% processed, configure your function with a dead-letter queue:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq.
%%
%% The status code in the API response doesn't reflect function errors.
%% Error codes are reserved for errors that prevent your function from
%% executing, such as permissions errors, quota:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
%% errors, or issues with your function's code and configuration. For
%% example, Lambda returns `TooManyRequestsException' if running the
%% function would cause you to exceed a concurrency limit at either the
%% account level (`ConcurrentInvocationLimitExceeded') or function level
%% (`ReservedFunctionConcurrentInvocationLimitExceeded').
%%
%% For functions with a long timeout, your client might disconnect during
%% synchronous invocation while it waits for a response. Configure your HTTP
%% client, SDK, firewall, proxy, or operating system to allow for long
%% connections with timeout or keep-alive settings.
%%
%% This operation requires permission for the lambda:InvokeFunction:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
%% action. For details on how to set up permissions for cross-account
%% invocations, see Granting function access to other accounts:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke.
invoke(Client, FunctionName, Input) ->
    invoke(Client, FunctionName, Input, []).
invoke(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/invocations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amz-Executed-Version">>, <<"ExecutedVersion">>},
            {<<"X-Amz-Function-Error">>, <<"FunctionError">>},
            {<<"X-Amz-Log-Result">>, <<"LogResult">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc For asynchronous function invocation, use `Invoke'.
%%
%% Invokes a function asynchronously.
%%
%% If you do use the InvokeAsync action, note that it doesn't support the
%% use of X-Ray active tracing. Trace ID is not propagated to the function,
%% even if X-Ray active tracing is turned on.
invoke_async(Client, FunctionName, Input) ->
    invoke_async(Client, FunctionName, Input, []).
invoke_async(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2014-11-13/functions/", aws_util:encode_uri(FunctionName), "/invoke-async/"],
    SuccessStatusCode = 202,
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

%% @doc Configure your Lambda functions to stream response payloads back to
%% clients.
%%
%% For more information, see Configuring a Lambda function to stream
%% responses:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html.
%%
%% This operation requires permission for the lambda:InvokeFunction:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
%% action. For details on how to set up permissions for cross-account
%% invocations, see Granting function access to other accounts:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke.
invoke_with_response_stream(Client, FunctionName, Input) ->
    invoke_with_response_stream(Client, FunctionName, Input, []).
invoke_with_response_stream(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-11-15/functions/", aws_util:encode_uri(FunctionName), "/response-streaming-invocations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amz-Executed-Version">>, <<"ExecutedVersion">>},
            {<<"Content-Type">>, <<"ResponseStreamContentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns a list of aliases:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
%% for a Lambda function.
list_aliases(Client, FunctionName)
  when is_map(Client) ->
    list_aliases(Client, FunctionName, #{}, #{}).

list_aliases(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_aliases(Client, FunctionName, QueryMap, HeadersMap, []).

list_aliases(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, maps:get(<<"FunctionVersion">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of code signing configurations:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html.
%%
%% A request returns up to 10,000 configurations per call. You can use the
%% `MaxItems' parameter to return fewer configurations per call.
list_code_signing_configs(Client)
  when is_map(Client) ->
    list_code_signing_configs(Client, #{}, #{}).

list_code_signing_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_signing_configs(Client, QueryMap, HeadersMap, []).

list_code_signing_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists event source mappings.
%%
%% Specify an `EventSourceArn' to show only event source mappings for a
%% single event source.
list_event_source_mappings(Client)
  when is_map(Client) ->
    list_event_source_mappings(Client, #{}, #{}).

list_event_source_mappings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_source_mappings(Client, QueryMap, HeadersMap, []).

list_event_source_mappings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"EventSourceArn">>, maps:get(<<"EventSourceArn">>, QueryMap, undefined)},
        {<<"FunctionName">>, maps:get(<<"FunctionName">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of configurations for asynchronous invocation for a
%% function.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
list_function_event_invoke_configs(Client, FunctionName)
  when is_map(Client) ->
    list_function_event_invoke_configs(Client, FunctionName, #{}, #{}).

list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap, []).

list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda function URLs for the specified function.
list_function_url_configs(Client, FunctionName)
  when is_map(Client) ->
    list_function_url_configs(Client, FunctionName, #{}, #{}).

list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap, []).

list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/urls"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda functions, with the version-specific
%% configuration of each.
%%
%% Lambda returns up to 50 functions per call.
%%
%% Set `FunctionVersion' to `ALL' to include all published versions
%% of each function in addition to the unpublished version.
%%
%% The `ListFunctions' operation returns a subset of the
%% `FunctionConfiguration' fields. To get the additional fields (State,
%% StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason,
%% LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or
%% version, use `GetFunction'.
list_functions(Client)
  when is_map(Client) ->
    list_functions(Client, #{}, #{}).

list_functions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, QueryMap, HeadersMap, []).

list_functions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, maps:get(<<"FunctionVersion">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MasterRegion">>, maps:get(<<"MasterRegion">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the functions that use the specified code signing configuration.
%%
%% You can use this method prior to deleting a code signing configuration, to
%% verify that no functions are using it.
list_functions_by_code_signing_config(Client, CodeSigningConfigArn)
  when is_map(Client) ->
    list_functions_by_code_signing_config(Client, CodeSigningConfigArn, #{}, #{}).

list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, []).

list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), "/functions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Versions that have been deleted aren't listed. Specify a runtime
%% identifier:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html to list
%% only versions that indicate that they're compatible with that runtime.
%% Specify a compatible architecture to include only layer versions that are
%% compatible with that architecture.
list_layer_versions(Client, LayerName)
  when is_map(Client) ->
    list_layer_versions(Client, LayerName, #{}, #{}).

list_layer_versions(Client, LayerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_layer_versions(Client, LayerName, QueryMap, HeadersMap, []).

list_layer_versions(Client, LayerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleArchitecture">>, maps:get(<<"CompatibleArchitecture">>, QueryMap, undefined)},
        {<<"CompatibleRuntime">>, maps:get(<<"CompatibleRuntime">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Lambda layers:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html and
%% shows information about the latest version of each.
%%
%% Specify a runtime identifier:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html to list
%% only layers that indicate that they're compatible with that runtime.
%% Specify a compatible architecture to include only layers that are
%% compatible with that instruction set architecture:
%% https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html.
list_layers(Client)
  when is_map(Client) ->
    list_layers(Client, #{}, #{}).

list_layers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_layers(Client, QueryMap, HeadersMap, []).

list_layers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleArchitecture">>, maps:get(<<"CompatibleArchitecture">>, QueryMap, undefined)},
        {<<"CompatibleRuntime">>, maps:get(<<"CompatibleRuntime">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of provisioned concurrency configurations for a
%% function.
list_provisioned_concurrency_configs(Client, FunctionName)
  when is_map(Client) ->
    list_provisioned_concurrency_configs(Client, FunctionName, #{}, #{}).

list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap, []).

list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency?List=ALL"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a function's tags:
%% https://docs.aws.amazon.com/lambda/latest/dg/tagging.html.
%%
%% You can also view tags with `GetFunction'.
list_tags(Client, Resource)
  when is_map(Client) ->
    list_tags(Client, Resource, #{}, #{}).

list_tags(Client, Resource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, Resource, QueryMap, HeadersMap, []).

list_tags(Client, Resource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of versions:
%% https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html, with
%% the version-specific configuration of each.
%%
%% Lambda returns up to 50 versions per call.
list_versions_by_function(Client, FunctionName)
  when is_map(Client) ->
    list_versions_by_function(Client, FunctionName, #{}, #{}).

list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap, []).

list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
%% from a ZIP archive.
%%
%% Each time you call `PublishLayerVersion' with the same layer name, a
%% new version is created.
%%
%% Add layers to your function with `CreateFunction' or
%% `UpdateFunctionConfiguration'.
publish_layer_version(Client, LayerName, Input) ->
    publish_layer_version(Client, LayerName, Input, []).
publish_layer_version(Client, LayerName, Input0, Options0) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
    SuccessStatusCode = 201,
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

%% @doc Creates a version:
%% https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html from
%% the current code and configuration of a function.
%%
%% Use versions to create a snapshot of your function code and configuration
%% that doesn't change.
%%
%% Lambda doesn't publish a version if the function's configuration
%% and code haven't changed since the last version. Use
%% `UpdateFunctionCode' or `UpdateFunctionConfiguration' to update
%% the function before publishing a version.
%%
%% Clients can invoke versions directly or with an alias. To create an alias,
%% use `CreateAlias'.
publish_version(Client, FunctionName, Input) ->
    publish_version(Client, FunctionName, Input, []).
publish_version(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
    SuccessStatusCode = 201,
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

%% @doc Update the code signing configuration for the function.
%%
%% Changes to the code signing configuration take effect the next time a user
%% tries to deploy a code package to the function.
put_function_code_signing_config(Client, FunctionName, Input) ->
    put_function_code_signing_config(Client, FunctionName, Input, []).
put_function_code_signing_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 200,
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

%% @doc Sets the maximum number of simultaneous executions for a function,
%% and reserves capacity for that concurrency level.
%%
%% Concurrency settings apply to the function as a whole, including all
%% published versions and the unpublished version. Reserving concurrency both
%% ensures that your function has capacity to process the specified number of
%% events simultaneously, and prevents it from scaling beyond that level. Use
%% `GetFunction' to see the current setting for a function.
%%
%% Use `GetAccountSettings' to see your Regional concurrency limit. You
%% can reserve concurrency for as many functions as you like, as long as you
%% leave at least 100 simultaneous executions unreserved for functions that
%% aren't configured with a per-function limit. For more information, see
%% Lambda function scaling:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html.
put_function_concurrency(Client, FunctionName, Input) ->
    put_function_concurrency(Client, FunctionName, Input, []).
put_function_concurrency(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,
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

%% @doc Configures options for asynchronous invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html on a
%% function, version, or alias.
%%
%% If a configuration already exists for a function, version, or alias, this
%% operation overwrites it. If you exclude any settings, they are removed. To
%% set one option without affecting existing settings for other options, use
%% `UpdateFunctionEventInvokeConfig'.
%%
%% By default, Lambda retries an asynchronous invocation twice if the
%% function returns an error. It retains events in a queue for up to six
%% hours. When an event fails all processing attempts or stays in the
%% asynchronous invocation queue for too long, Lambda discards it. To retain
%% discarded events, configure a dead-letter queue with
%% `UpdateFunctionConfiguration'.
%%
%% To send an invocation record to a queue, topic, function, or event bus,
%% specify a destination:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations.
%% You can configure separate destinations for successful invocations
%% (on-success) and events that fail all processing attempts (on-failure).
%% You can configure destinations in addition to or instead of a dead-letter
%% queue.
put_function_event_invoke_config(Client, FunctionName, Input) ->
    put_function_event_invoke_config(Client, FunctionName, Input, []).
put_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a provisioned concurrency configuration to a function's
%% alias or version.
put_provisioned_concurrency_config(Client, FunctionName, Input) ->
    put_provisioned_concurrency_config(Client, FunctionName, Input, []).
put_provisioned_concurrency_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the runtime management configuration for a function's
%% version.
%%
%% For more information, see Runtime updates:
%% https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html.
put_runtime_management_config(Client, FunctionName, Input) ->
    put_runtime_management_config(Client, FunctionName, Input, []).
put_runtime_management_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-07-20/functions/", aws_util:encode_uri(FunctionName), "/runtime-management-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a statement from the permissions policy for a version of an
%% Lambda layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% For more information, see `AddLayerVersionPermission'.
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input) ->
    remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input, []).
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes function-use permission from an Amazon Web Service or another
%% Amazon Web Services account.
%%
%% You can get the ID of the statement from the output of `GetPolicy'.
remove_permission(Client, FunctionName, StatementId, Input) ->
    remove_permission(Client, FunctionName, StatementId, Input, []).
remove_permission(Client, FunctionName, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>},
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
%% to a function.
tag_resource(Client, Resource, Input) ->
    tag_resource(Client, Resource, Input, []).
tag_resource(Client, Resource, Input0, Options0) ->
    Method = post,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes tags:
%% https://docs.aws.amazon.com/lambda/latest/dg/tagging.html from a function.
untag_resource(Client, Resource, Input) ->
    untag_resource(Client, Resource, Input, []).
untag_resource(Client, Resource, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
update_alias(Client, FunctionName, Name, Input) ->
    update_alias(Client, FunctionName, Name, Input, []).
update_alias(Client, FunctionName, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
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

%% @doc Update the code signing configuration.
%%
%% Changes to the code signing configuration take effect the next time a user
%% tries to deploy a code package to the function.
update_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    update_code_signing_config(Client, CodeSigningConfigArn, Input, []).
update_code_signing_config(Client, CodeSigningConfigArn, Input0, Options0) ->
    Method = put,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Updates an event source mapping.
%%
%% You can change the function that Lambda invokes, or pause invocation and
%% resume later from the same location.
%%
%% For details about how to configure different event sources, see the
%% following topics.
%%
%% <ul> <li> Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
%%
%% </li> <li> Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
%%
%% </li> <li> Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
%%
%% </li> <li> Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
%%
%% </li> <li> Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
%%
%% </li> <li> Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
%%
%% </li> <li> Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
%%
%% </li> </ul> The following error handling options are available only for
%% stream sources (DynamoDB and Kinesis):
%%
%% <ul> <li> `BisectBatchOnFunctionError' – If the function returns an
%% error, split the batch in two and retry.
%%
%% </li> <li> `DestinationConfig' – Send discarded records to an Amazon
%% SQS queue or Amazon SNS topic.
%%
%% </li> <li> `MaximumRecordAgeInSeconds' – Discard records older than
%% the specified age. The default value is infinite (-1). When set to
%% infinite (-1), failed records are retried until the record expires
%%
%% </li> <li> `MaximumRetryAttempts' – Discard records after the
%% specified number of retries. The default value is infinite (-1). When set
%% to infinite (-1), failed records are retried until the record expires.
%%
%% </li> <li> `ParallelizationFactor' – Process multiple batches from
%% each shard concurrently.
%%
%% </li> </ul> For information about which configuration parameters apply to
%% each event source, see the following topics.
%%
%% <ul> <li> Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
%%
%% </li> <li> Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
%%
%% </li> <li> Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
%%
%% </li> <li> Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
%%
%% </li> <li> Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
%%
%% </li> <li> Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
%%
%% </li> <li> Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
%%
%% </li> </ul>
update_event_source_mapping(Client, UUID, Input) ->
    update_event_source_mapping(Client, UUID, Input, []).
update_event_source_mapping(Client, UUID, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates a Lambda function's code.
%%
%% If code signing is enabled for the function, the code package must be
%% signed by a trusted publisher. For more information, see Configuring code
%% signing for Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html.
%%
%% If the function's package type is `Image', then you must specify
%% the code package in `ImageUri' as the URI of a container image:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html in the
%% Amazon ECR registry.
%%
%% If the function's package type is `Zip', then you must specify the
%% deployment package as a .zip file archive:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip.
%% Enter the Amazon S3 bucket and key of the code .zip file location. You can
%% also provide the function code inline using the `ZipFile' field.
%%
%% The code in the deployment package must be compatible with the target
%% instruction set architecture of the function (`x86-64' or
%% `arm64').
%%
%% The function's code is locked when you publish a version. You
%% can't modify the code of a published version, only the unpublished
%% version.
%%
%% For a function defined as a container image, Lambda resolves the image tag
%% to an image digest. In Amazon ECR, if you update the image tag to a new
%% image, Lambda does not automatically update the function.
update_function_code(Client, FunctionName, Input) ->
    update_function_code(Client, FunctionName, Input, []).
update_function_code(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/code"],
    SuccessStatusCode = 200,
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

%% @doc Modify the version-specific settings of a Lambda function.
%%
%% When you update a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute. During this time, you can't modify the
%% function, but you can still invoke it. The `LastUpdateStatus',
%% `LastUpdateStatusReason', and `LastUpdateStatusReasonCode' fields
%% in the response from `GetFunctionConfiguration' indicate when the
%% update is complete and the function is processing events with the new
%% configuration. For more information, see Lambda function states:
%% https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html.
%%
%% These settings can vary between versions of a function and are locked when
%% you publish a version. You can't modify the configuration of a
%% published version, only the unpublished version.
%%
%% To configure function concurrency, use `PutFunctionConcurrency'. To
%% grant invoke permissions to an Amazon Web Services account or Amazon Web
%% Service, use `AddPermission'.
update_function_configuration(Client, FunctionName, Input) ->
    update_function_configuration(Client, FunctionName, Input, []).
update_function_configuration(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
    SuccessStatusCode = 200,
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

%% @doc Updates the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
update_function_event_invoke_config(Client, FunctionName, Input) ->
    update_function_event_invoke_config(Client, FunctionName, Input, []).
update_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration for a Lambda function URL.
update_function_url_config(Client, FunctionName, Input) ->
    update_function_url_config(Client, FunctionName, Input, []).
update_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"lambda">>},
    Host = build_host(<<"lambda">>, Client1),
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
