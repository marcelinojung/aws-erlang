%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc WAF
%%
%% This is the latest version of the WAF API, released in November, 2019.
%%
%% The names of the entities that you use to access this API, like endpoints
%% and namespaces, all have the versioning information added, like
%% &quot;V2&quot; or &quot;v2&quot;, to distinguish from the prior version.
%% We recommend migrating your resources to this version, because it has a
%% number of significant improvements.
%%
%% If you used WAF prior to this release, you can't use this WAFV2 API to
%% access any WAF resources that you created before. You can access your old
%% rules, web ACLs, and other WAF resources only through the WAF Classic
%% APIs. The WAF Classic APIs have retained the prior names, endpoints, and
%% namespaces.
%%
%% For information, including how to migrate your WAF resources to this
%% version, see the WAF Developer Guide.
%%
%% WAF is a web application firewall that lets you monitor the HTTP and HTTPS
%% requests that are forwarded to an Amazon CloudFront distribution, Amazon
%% API Gateway REST API, Application Load Balancer, AppSync GraphQL API,
%% Amazon Cognito user pool, App Runner service, or Amazon Web Services
%% Verified Access instance. WAF also lets you control access to your
%% content, to protect the Amazon Web Services resource that WAF is
%% monitoring. Based on conditions that you specify, such as the IP addresses
%% that requests originate from or the values of query strings, the protected
%% resource responds to requests with either the requested content, an HTTP
%% 403 status code (Forbidden), or with a custom response.
%%
%% This API guide is for developers who need detailed information about WAF
%% API actions, data types, and errors. For detailed information about WAF
%% features and guidance for configuring and using WAF, see the WAF Developer
%% Guide.
%%
%% You can make calls using the endpoints listed in WAF endpoints and quotas.
%%
%% <ul> <li> For regional applications, you can use any of the endpoints in
%% the list. A regional application can be an Application Load Balancer
%% (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon
%% Cognito user pool, an App Runner service, or an Amazon Web Services
%% Verified Access instance.
%%
%% </li> <li> For Amazon CloudFront applications, you must use the API
%% endpoint listed for US East (N. Virginia): us-east-1.
%%
%% </li> </ul> Alternatively, you can use one of the Amazon Web Services SDKs
%% to access an API that's tailored to the programming language or
%% platform that you're using. For more information, see Amazon Web
%% Services SDKs.
%%
%% We currently provide two versions of the WAF API: this API and the prior
%% versions, the classic WAF APIs. This new API provides the same
%% functionality as the older versions, with the following major
%% improvements:
%%
%% <ul> <li> You use one API for both global and regional applications. Where
%% you need to distinguish the scope, you specify a `Scope' parameter and
%% set it to `CLOUDFRONT' or `REGIONAL'.
%%
%% </li> <li> You can define a web ACL or rule group with a single call, and
%% update it with a single call. You define all rule specifications in JSON
%% format, and pass them to your rule group or web ACL calls.
%%
%% </li> <li> The limits WAF places on the use of rules more closely reflects
%% the cost of running each type of rule. Rule groups include capacity
%% settings, so you know the maximum cost of a rule group when you use it.
%%
%% </li> </ul>
-module(aws_wafv2).

-export([associate_web_acl/2,
         associate_web_acl/3,
         check_capacity/2,
         check_capacity/3,
         create_api_key/2,
         create_api_key/3,
         create_ip_set/2,
         create_ip_set/3,
         create_regex_pattern_set/2,
         create_regex_pattern_set/3,
         create_rule_group/2,
         create_rule_group/3,
         create_web_acl/2,
         create_web_acl/3,
         delete_api_key/2,
         delete_api_key/3,
         delete_firewall_manager_rule_groups/2,
         delete_firewall_manager_rule_groups/3,
         delete_ip_set/2,
         delete_ip_set/3,
         delete_logging_configuration/2,
         delete_logging_configuration/3,
         delete_permission_policy/2,
         delete_permission_policy/3,
         delete_regex_pattern_set/2,
         delete_regex_pattern_set/3,
         delete_rule_group/2,
         delete_rule_group/3,
         delete_web_acl/2,
         delete_web_acl/3,
         describe_all_managed_products/2,
         describe_all_managed_products/3,
         describe_managed_products_by_vendor/2,
         describe_managed_products_by_vendor/3,
         describe_managed_rule_group/2,
         describe_managed_rule_group/3,
         disassociate_web_acl/2,
         disassociate_web_acl/3,
         generate_mobile_sdk_release_url/2,
         generate_mobile_sdk_release_url/3,
         get_decrypted_api_key/2,
         get_decrypted_api_key/3,
         get_ip_set/2,
         get_ip_set/3,
         get_logging_configuration/2,
         get_logging_configuration/3,
         get_managed_rule_set/2,
         get_managed_rule_set/3,
         get_mobile_sdk_release/2,
         get_mobile_sdk_release/3,
         get_permission_policy/2,
         get_permission_policy/3,
         get_rate_based_statement_managed_keys/2,
         get_rate_based_statement_managed_keys/3,
         get_regex_pattern_set/2,
         get_regex_pattern_set/3,
         get_rule_group/2,
         get_rule_group/3,
         get_sampled_requests/2,
         get_sampled_requests/3,
         get_web_acl/2,
         get_web_acl/3,
         get_web_acl_for_resource/2,
         get_web_acl_for_resource/3,
         list_api_keys/2,
         list_api_keys/3,
         list_available_managed_rule_group_versions/2,
         list_available_managed_rule_group_versions/3,
         list_available_managed_rule_groups/2,
         list_available_managed_rule_groups/3,
         list_ip_sets/2,
         list_ip_sets/3,
         list_logging_configurations/2,
         list_logging_configurations/3,
         list_managed_rule_sets/2,
         list_managed_rule_sets/3,
         list_mobile_sdk_releases/2,
         list_mobile_sdk_releases/3,
         list_regex_pattern_sets/2,
         list_regex_pattern_sets/3,
         list_resources_for_web_acl/2,
         list_resources_for_web_acl/3,
         list_rule_groups/2,
         list_rule_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_web_acls/2,
         list_web_acls/3,
         put_logging_configuration/2,
         put_logging_configuration/3,
         put_managed_rule_set_versions/2,
         put_managed_rule_set_versions/3,
         put_permission_policy/2,
         put_permission_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_ip_set/2,
         update_ip_set/3,
         update_managed_rule_set_version_expiry_date/2,
         update_managed_rule_set_version_expiry_date/3,
         update_regex_pattern_set/2,
         update_regex_pattern_set/3,
         update_rule_group/2,
         update_rule_group/3,
         update_web_acl/2,
         update_web_acl/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a web ACL with a regional application resource, to protect
%% the resource.
%%
%% A regional application can be an Application Load Balancer (ALB), an
%% Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon Cognito
%% user pool, an App Runner service, or an Amazon Web Services Verified
%% Access instance.
%%
%% For Amazon CloudFront, don't use this call. Instead, use your
%% CloudFront distribution configuration. To associate a web ACL, in the
%% CloudFront call `UpdateDistribution', set the web ACL ID to the Amazon
%% Resource Name (ARN) of the web ACL. For information, see
%% UpdateDistribution in the Amazon CloudFront Developer Guide.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type. For details, see Permissions for AssociateWebACL in the WAF
%% Developer Guide.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% <ul> <li> After you create a web ACL, if you try to associate it with a
%% resource, you might get an exception indicating that the web ACL is
%% unavailable.
%%
%% </li> <li> After you add a rule group to a web ACL, the new rule group
%% rules might be in effect in one area where the web ACL is used and not in
%% another.
%%
%% </li> <li> After you change a rule action setting, you might see the old
%% action in some places and the new action in others.
%%
%% </li> <li> After you add an IP address to an IP set that is in use in a
%% blocking rule, the new address might be blocked in one area while still
%% allowed in another.
%%
%% </li> </ul>
associate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_web_acl(Client, Input, []).
associate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateWebACL">>, Input, Options).

%% @doc Returns the web ACL capacity unit (WCU) requirements for a specified
%% scope and set of rules.
%%
%% You can use this to check the capacity requirements for the rules you want
%% to use in a `RuleGroup' or `WebACL'.
%%
%% WAF uses WCUs to calculate and control the operating resources that are
%% used to run your rules, rule groups, and web ACLs. WAF calculates capacity
%% differently for each rule type, to reflect the relative cost of each rule.
%% Simple rules that cost little to run use fewer WCUs than more complex
%% rules that use more processing power. Rule group capacity is fixed at
%% creation, which helps users plan their web ACL WCU usage when they use a
%% rule group. For more information, see WAF web ACL capacity units (WCU) in
%% the WAF Developer Guide.
check_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_capacity(Client, Input, []).
check_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckCapacity">>, Input, Options).

%% @doc Creates an API key that contains a set of token domains.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications. The API lets you customize the placement
%% and characteristics of the CAPTCHA puzzle for your end users. For more
%% information about the CAPTCHA JavaScript integration, see WAF client
%% application integration in the WAF Developer Guide.
%%
%% You can use a single key for up to 5 domains. After you generate a key,
%% you can copy it for use in your JavaScript integration.
create_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_api_key(Client, Input, []).
create_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAPIKey">>, Input, Options).

%% @doc Creates an `IPSet', which you use to identify web requests that
%% originate from specific IP addresses or ranges of IP addresses.
%%
%% For example, if you're receiving a lot of requests from a ranges of IP
%% addresses, you can configure WAF to block them using an IPSet that lists
%% those IP addresses.
create_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ip_set(Client, Input, []).
create_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIPSet">>, Input, Options).

%% @doc Creates a `RegexPatternSet', which you reference in a
%% `RegexPatternSetReferenceStatement', to have WAF inspect a web request
%% component for the specified patterns.
create_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_pattern_set(Client, Input, []).
create_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexPatternSet">>, Input, Options).

%% @doc Creates a `RuleGroup' per the specifications provided.
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group,
%% you define an immutable capacity limit. If you update a rule group, you
%% must stay within the capacity. This allows others to reuse the rule group
%% with confidence in its capacity requirements.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc Creates a `WebACL' per the specifications provided.
%%
%% A web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has a statement that defines what to look for in web
%% requests and an action that WAF applies to requests that match the
%% statement. In the web ACL, you assign a default action to take (allow,
%% block) for any request that does not match any of the rules. The rules in
%% a web ACL can be a combination of the types `Rule', `RuleGroup',
%% and managed rule group. You can associate a web ACL with one or more
%% Amazon Web Services resources to protect. The resources can be an Amazon
%% CloudFront distribution, an Amazon API Gateway REST API, an Application
%% Load Balancer, an AppSync GraphQL API, an Amazon Cognito user pool, an App
%% Runner service, or an Amazon Web Services Verified Access instance.
create_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_acl(Client, Input, []).
create_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACL">>, Input, Options).

%% @doc Deletes the specified API key.
%%
%% After you delete a key, it can take up to 24 hours for WAF to disallow use
%% of the key in all regions.
delete_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_api_key(Client, Input, []).
delete_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAPIKey">>, Input, Options).

%% @doc Deletes all rule groups that are managed by Firewall Manager for the
%% specified web ACL.
%%
%% You can only use this if `ManagedByFirewallManager' is false in the
%% specified `WebACL'.
delete_firewall_manager_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_manager_rule_groups(Client, Input, []).
delete_firewall_manager_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallManagerRuleGroups">>, Input, Options).

%% @doc Deletes the specified `IPSet'.
delete_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ip_set(Client, Input, []).
delete_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIPSet">>, Input, Options).

%% @doc Deletes the `LoggingConfiguration' from the specified web ACL.
delete_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_logging_configuration(Client, Input, []).
delete_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoggingConfiguration">>, Input, Options).

%% @doc Permanently deletes an IAM policy from the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
delete_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_policy(Client, Input, []).
delete_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionPolicy">>, Input, Options).

%% @doc Deletes the specified `RegexPatternSet'.
delete_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_pattern_set(Client, Input, []).
delete_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexPatternSet">>, Input, Options).

%% @doc Deletes the specified `RuleGroup'.
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc Deletes the specified `WebACL'.
%%
%% You can only use this if `ManagedByFirewallManager' is false in the
%% specified `WebACL'.
%%
%% Before deleting any web ACL, first disassociate it from all resources.
%%
%% To retrieve a list of the resources that are associated with a web ACL,
%% use the following calls:
%%
%% For regional resources, call `ListResourcesForWebACL'.
%%
%% For Amazon CloudFront distributions, use the CloudFront call
%% `ListDistributionsByWebACLId'. For information, see
%% ListDistributionsByWebACLId in the Amazon CloudFront API Reference.
%%
%% To disassociate a resource from a web ACL, use the following calls:
%%
%% For regional resources, call `DisassociateWebACL'.
%%
%% For Amazon CloudFront distributions, provide an empty web ACL ID in the
%% CloudFront call `UpdateDistribution'. For information, see
%% UpdateDistribution in the Amazon CloudFront API Reference.
delete_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_acl(Client, Input, []).
delete_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebACL">>, Input, Options).

%% @doc Provides high-level information for the Amazon Web Services Managed
%% Rules rule groups and Amazon Web Services Marketplace managed rule groups.
describe_all_managed_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_all_managed_products(Client, Input, []).
describe_all_managed_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAllManagedProducts">>, Input, Options).

%% @doc Provides high-level information for the managed rule groups owned by
%% a specific vendor.
describe_managed_products_by_vendor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_products_by_vendor(Client, Input, []).
describe_managed_products_by_vendor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedProductsByVendor">>, Input, Options).

%% @doc Provides high-level information for a managed rule group, including
%% descriptions of the rules.
describe_managed_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_rule_group(Client, Input, []).
describe_managed_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedRuleGroup">>, Input, Options).

%% @doc Disassociates the specified regional application resource from any
%% existing web ACL association.
%%
%% A resource can have at most one web ACL association. A regional
%% application can be an Application Load Balancer (ALB), an Amazon API
%% Gateway REST API, an AppSync GraphQL API, an Amazon Cognito user pool, an
%% App Runner service, or an Amazon Web Services Verified Access instance.
%%
%% For Amazon CloudFront, don't use this call. Instead, use your
%% CloudFront distribution configuration. To disassociate a web ACL, provide
%% an empty web ACL ID in the CloudFront call `UpdateDistribution'. For
%% information, see UpdateDistribution in the Amazon CloudFront API
%% Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type. For details, see Permissions for DisassociateWebACL in the WAF
%% Developer Guide.
disassociate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_web_acl(Client, Input, []).
disassociate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateWebACL">>, Input, Options).

%% @doc Generates a presigned download URL for the specified release of the
%% mobile SDK.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration in the WAF Developer Guide.
generate_mobile_sdk_release_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_mobile_sdk_release_url(Client, Input, []).
generate_mobile_sdk_release_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateMobileSdkReleaseUrl">>, Input, Options).

%% @doc Returns your API key in decrypted form.
%%
%% Use this to check the token domains that you have defined for the key.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications. The API lets you customize the placement
%% and characteristics of the CAPTCHA puzzle for your end users. For more
%% information about the CAPTCHA JavaScript integration, see WAF client
%% application integration in the WAF Developer Guide.
get_decrypted_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_decrypted_api_key(Client, Input, []).
get_decrypted_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDecryptedAPIKey">>, Input, Options).

%% @doc Retrieves the specified `IPSet'.
get_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ip_set(Client, Input, []).
get_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIPSet">>, Input, Options).

%% @doc Returns the `LoggingConfiguration' for the specified web ACL.
get_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_configuration(Client, Input, []).
get_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingConfiguration">>, Input, Options).

%% @doc Retrieves the specified managed rule set.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
get_managed_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_rule_set(Client, Input, []).
get_managed_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedRuleSet">>, Input, Options).

%% @doc Retrieves information for the specified mobile SDK release, including
%% release notes and tags.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration in the WAF Developer Guide.
get_mobile_sdk_release(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_sdk_release(Client, Input, []).
get_mobile_sdk_release(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileSdkRelease">>, Input, Options).

%% @doc Returns the IAM policy that is attached to the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
get_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permission_policy(Client, Input, []).
get_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionPolicy">>, Input, Options).

%% @doc Retrieves the IP addresses that are currently blocked by a rate-based
%% rule instance.
%%
%% This is only available for rate-based rules that aggregate solely on the
%% IP address or on the forwarded IP address.
%%
%% The maximum number of addresses that can be blocked for a single
%% rate-based rule instance is 10,000. If more than 10,000 addresses exceed
%% the rate limit, those with the highest rates are blocked.
%%
%% For a rate-based rule that you've defined inside a rule group, provide
%% the name of the rule group reference statement in your request, in
%% addition to the rate-based rule name and the web ACL name.
%%
%% WAF monitors web requests and manages keys independently for each unique
%% combination of web ACL, optional rule group, and rate-based rule. For
%% example, if you define a rate-based rule inside a rule group, and then use
%% the rule group in a web ACL, WAF monitors web requests and manages keys
%% for that web ACL, rule group reference statement, and rate-based rule
%% instance. If you use the same rule group in a second web ACL, WAF monitors
%% web requests and manages keys for this second usage completely independent
%% of your first.
get_rate_based_statement_managed_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_statement_managed_keys(Client, Input, []).
get_rate_based_statement_managed_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedStatementManagedKeys">>, Input, Options).

%% @doc Retrieves the specified `RegexPatternSet'.
get_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_pattern_set(Client, Input, []).
get_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexPatternSet">>, Input, Options).

%% @doc Retrieves the specified `RuleGroup'.
get_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule_group(Client, Input, []).
get_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRuleGroup">>, Input, Options).

%% @doc Gets detailed information about a specified number of requests--a
%% sample--that WAF randomly selects from among the first 5,000 requests that
%% your Amazon Web Services resource received during a time range that you
%% choose.
%%
%% You can specify a sample size of up to 500 requests, and you can specify
%% any time range in the previous three hours.
%%
%% `GetSampledRequests' returns a time range, which is usually the time
%% range that you specified. However, if your resource (such as a CloudFront
%% distribution) received 5,000 requests before the specified time range
%% elapsed, `GetSampledRequests' returns an updated time range. This new
%% time range indicates the actual period during which WAF selected the
%% requests in the sample.
get_sampled_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sampled_requests(Client, Input, []).
get_sampled_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSampledRequests">>, Input, Options).

%% @doc Retrieves the specified `WebACL'.
get_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl(Client, Input, []).
get_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACL">>, Input, Options).

%% @doc Retrieves the `WebACL' for the specified resource.
%%
%% This call uses `GetWebACL', to verify that your account has permission
%% to access the retrieved web ACL. If you get an error that indicates that
%% your account isn't authorized to perform `wafv2:GetWebACL' on the
%% resource, that error won't be included in your CloudTrail event
%% history.
%%
%% For Amazon CloudFront, don't use this call. Instead, call the
%% CloudFront action `GetDistributionConfig'. For information, see
%% GetDistributionConfig in the Amazon CloudFront API Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type. For details, see Permissions for GetWebACLForResource in the WAF
%% Developer Guide.
get_web_acl_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl_for_resource(Client, Input, []).
get_web_acl_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACLForResource">>, Input, Options).

%% @doc Retrieves a list of the API keys that you've defined for the
%% specified scope.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications. The API lets you customize the placement
%% and characteristics of the CAPTCHA puzzle for your end users. For more
%% information about the CAPTCHA JavaScript integration, see WAF client
%% application integration in the WAF Developer Guide.
list_api_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_api_keys(Client, Input, []).
list_api_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAPIKeys">>, Input, Options).

%% @doc Returns a list of the available versions for the specified managed
%% rule group.
list_available_managed_rule_group_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_managed_rule_group_versions(Client, Input, []).
list_available_managed_rule_group_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagedRuleGroupVersions">>, Input, Options).

%% @doc Retrieves an array of managed rule groups that are available for you
%% to use.
%%
%% This list includes all Amazon Web Services Managed Rules rule groups and
%% all of the Amazon Web Services Marketplace managed rule groups that
%% you're subscribed to.
list_available_managed_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_managed_rule_groups(Client, Input, []).
list_available_managed_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagedRuleGroups">>, Input, Options).

%% @doc Retrieves an array of `IPSetSummary' objects for the IP sets that
%% you manage.
list_ip_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ip_sets(Client, Input, []).
list_ip_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIPSets">>, Input, Options).

%% @doc Retrieves an array of your `LoggingConfiguration' objects.
list_logging_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_logging_configurations(Client, Input, []).
list_logging_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLoggingConfigurations">>, Input, Options).

%% @doc Retrieves the managed rule sets that you own.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
list_managed_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_rule_sets(Client, Input, []).
list_managed_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedRuleSets">>, Input, Options).

%% @doc Retrieves a list of the available releases for the mobile SDK and the
%% specified device platform.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration in the WAF Developer Guide.
list_mobile_sdk_releases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_sdk_releases(Client, Input, []).
list_mobile_sdk_releases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileSdkReleases">>, Input, Options).

%% @doc Retrieves an array of `RegexPatternSetSummary' objects for the
%% regex pattern sets that you manage.
list_regex_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_pattern_sets(Client, Input, []).
list_regex_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexPatternSets">>, Input, Options).

%% @doc Retrieves an array of the Amazon Resource Names (ARNs) for the
%% regional resources that are associated with the specified web ACL.
%%
%% For Amazon CloudFront, don't use this call. Instead, use the
%% CloudFront call `ListDistributionsByWebACLId'. For information, see
%% ListDistributionsByWebACLId in the Amazon CloudFront API Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type. For details, see Permissions for ListResourcesForWebACL in the WAF
%% Developer Guide.
list_resources_for_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_for_web_acl(Client, Input, []).
list_resources_for_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesForWebACL">>, Input, Options).

%% @doc Retrieves an array of `RuleGroupSummary' objects for the rule
%% groups that you manage.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc Retrieves the `TagInfoForResource' for the specified resource.
%%
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to &quot;customer&quot; and the value to the customer name or ID. You
%% can specify one or more tags to add to each Amazon Web Services resource,
%% up to 50 tags for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through WAF:
%% web ACLs, rule groups, IP sets, and regex pattern sets. You can't
%% manage or view tags through the WAF console.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves an array of `WebACLSummary' objects for the web ACLs
%% that you manage.
list_web_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_acls(Client, Input, []).
list_web_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebACLs">>, Input, Options).

%% @doc Enables the specified `LoggingConfiguration', to start logging
%% from a web ACL, according to the configuration provided.
%%
%% This operation completely replaces any mutable specifications that you
%% already have for a logging configuration with the ones that you provide to
%% this call.
%%
%% To modify an existing logging configuration, do the following:
%%
%% Retrieve it by calling `GetLoggingConfiguration'
%%
%% Update its settings as needed
%%
%% Provide the complete logging configuration specification to this call
%%
%% You can define one logging destination per web ACL.
%%
%% You can access information about the traffic that WAF inspects using the
%% following steps:
%%
%% <ol> <li> Create your logging destination. You can use an Amazon
%% CloudWatch Logs log group, an Amazon Simple Storage Service (Amazon S3)
%% bucket, or an Amazon Kinesis Data Firehose.
%%
%% The name that you give the destination must start with
%% `aws-waf-logs-'. Depending on the type of destination, you might need
%% to configure additional settings or permissions.
%%
%% For configuration requirements and pricing information for each
%% destination type, see Logging web ACL traffic in the WAF Developer Guide.
%%
%% </li> <li> Associate your logging destination to your web ACL using a
%% `PutLoggingConfiguration' request.
%%
%% </li> </ol> When you successfully enable logging using a
%% `PutLoggingConfiguration' request, WAF creates an additional role or
%% policy that is required to write logs to the logging destination. For an
%% Amazon CloudWatch Logs log group, WAF creates a resource policy on the log
%% group. For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon
%% Kinesis Data Firehose, WAF creates a service-linked role.
%%
%% For additional information about web ACL logging, see Logging web ACL
%% traffic information in the WAF Developer Guide.
put_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_configuration(Client, Input, []).
put_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingConfiguration">>, Input, Options).

%% @doc Defines the versions of your managed rule set that you are offering
%% to the customers.
%%
%% Customers see your offerings as managed rule groups with versioning.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
%%
%% Customers retrieve their managed rule group list by calling
%% `ListAvailableManagedRuleGroups'. The name that you provide here for
%% your managed rule set is the name the customer sees for the corresponding
%% managed rule group. Customers can retrieve the available versions for a
%% managed rule group by calling `ListAvailableManagedRuleGroupVersions'.
%% You provide a rule group specification for each version. For each managed
%% rule set, you must specify a version that you recommend using.
%%
%% To initiate the expiration of a managed rule group version, use
%% `UpdateManagedRuleSetVersionExpiryDate'.
put_managed_rule_set_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_managed_rule_set_versions(Client, Input, []).
put_managed_rule_set_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutManagedRuleSetVersions">>, Input, Options).

%% @doc Attaches an IAM policy to the specified resource.
%%
%% Use this to share a rule group across accounts.
%%
%% You must be the owner of the rule group to perform this operation.
%%
%% This action is subject to the following restrictions:
%%
%% <ul> <li> You can attach only one policy with each
%% `PutPermissionPolicy' request.
%%
%% </li> <li> The ARN in the request must be a valid WAF `RuleGroup' ARN
%% and the rule group must exist in the same Region.
%%
%% </li> <li> The user making the request must be the owner of the rule
%% group.
%%
%% </li> </ul>
put_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission_policy(Client, Input, []).
put_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionPolicy">>, Input, Options).

%% @doc Associates tags with the specified Amazon Web Services resource.
%%
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to &quot;customer&quot; and the value to the customer name or ID. You
%% can specify one or more tags to add to each Amazon Web Services resource,
%% up to 50 tags for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through WAF:
%% web ACLs, rule groups, IP sets, and regex pattern sets. You can't
%% manage or view tags through the WAF console.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates tags from an Amazon Web Services resource.
%%
%% Tags are key:value pairs that you can associate with Amazon Web Services
%% resources. For example, the tag key might be &quot;customer&quot; and the
%% tag value might be &quot;companyA.&quot; You can specify one or more tags
%% to add to each container. You can add up to 50 tags to each Amazon Web
%% Services resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the specified `IPSet'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the IP set with the ones that you provide to this call.
%%
%% To modify an IP set, do the following:
%%
%% Retrieve it by calling `GetIPSet'
%%
%% Update its settings as needed
%%
%% Provide the complete IP set specification to this call
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% <ul> <li> After you create a web ACL, if you try to associate it with a
%% resource, you might get an exception indicating that the web ACL is
%% unavailable.
%%
%% </li> <li> After you add a rule group to a web ACL, the new rule group
%% rules might be in effect in one area where the web ACL is used and not in
%% another.
%%
%% </li> <li> After you change a rule action setting, you might see the old
%% action in some places and the new action in others.
%%
%% </li> <li> After you add an IP address to an IP set that is in use in a
%% blocking rule, the new address might be blocked in one area while still
%% allowed in another.
%%
%% </li> </ul>
update_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ip_set(Client, Input, []).
update_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIPSet">>, Input, Options).

%% @doc Updates the expiration information for your managed rule set.
%%
%% Use this to initiate the expiration of a managed rule group version. After
%% you initiate expiration for a version, WAF excludes it from the response
%% to `ListAvailableManagedRuleGroupVersions' for the managed rule group.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
update_managed_rule_set_version_expiry_date(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_rule_set_version_expiry_date(Client, Input, []).
update_managed_rule_set_version_expiry_date(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedRuleSetVersionExpiryDate">>, Input, Options).

%% @doc Updates the specified `RegexPatternSet'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the regex pattern set with the ones that you provide to
%% this call.
%%
%% To modify a regex pattern set, do the following:
%%
%% Retrieve it by calling `GetRegexPatternSet'
%%
%% Update its settings as needed
%%
%% Provide the complete regex pattern set specification to this call
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% <ul> <li> After you create a web ACL, if you try to associate it with a
%% resource, you might get an exception indicating that the web ACL is
%% unavailable.
%%
%% </li> <li> After you add a rule group to a web ACL, the new rule group
%% rules might be in effect in one area where the web ACL is used and not in
%% another.
%%
%% </li> <li> After you change a rule action setting, you might see the old
%% action in some places and the new action in others.
%%
%% </li> <li> After you add an IP address to an IP set that is in use in a
%% blocking rule, the new address might be blocked in one area while still
%% allowed in another.
%%
%% </li> </ul>
update_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_pattern_set(Client, Input, []).
update_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexPatternSet">>, Input, Options).

%% @doc Updates the specified `RuleGroup'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the rule group with the ones that you provide to this
%% call.
%%
%% To modify a rule group, do the following:
%%
%% Retrieve it by calling `GetRuleGroup'
%%
%% Update its settings as needed
%%
%% Provide the complete rule group specification to this call
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group,
%% you define an immutable capacity limit. If you update a rule group, you
%% must stay within the capacity. This allows others to reuse the rule group
%% with confidence in its capacity requirements.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% <ul> <li> After you create a web ACL, if you try to associate it with a
%% resource, you might get an exception indicating that the web ACL is
%% unavailable.
%%
%% </li> <li> After you add a rule group to a web ACL, the new rule group
%% rules might be in effect in one area where the web ACL is used and not in
%% another.
%%
%% </li> <li> After you change a rule action setting, you might see the old
%% action in some places and the new action in others.
%%
%% </li> <li> After you add an IP address to an IP set that is in use in a
%% blocking rule, the new address might be blocked in one area while still
%% allowed in another.
%%
%% </li> </ul>
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc Updates the specified `WebACL'.
%%
%% While updating a web ACL, WAF provides continuous coverage to the
%% resources that you have associated with the web ACL.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the web ACL with the ones that you provide to this call.
%%
%% To modify a web ACL, do the following:
%%
%% Retrieve it by calling `GetWebACL'
%%
%% Update its settings as needed
%%
%% Provide the complete web ACL specification to this call
%%
%% A web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has a statement that defines what to look for in web
%% requests and an action that WAF applies to requests that match the
%% statement. In the web ACL, you assign a default action to take (allow,
%% block) for any request that does not match any of the rules. The rules in
%% a web ACL can be a combination of the types `Rule', `RuleGroup',
%% and managed rule group. You can associate a web ACL with one or more
%% Amazon Web Services resources to protect. The resources can be an Amazon
%% CloudFront distribution, an Amazon API Gateway REST API, an Application
%% Load Balancer, an AppSync GraphQL API, an Amazon Cognito user pool, an App
%% Runner service, or an Amazon Web Services Verified Access instance.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% <ul> <li> After you create a web ACL, if you try to associate it with a
%% resource, you might get an exception indicating that the web ACL is
%% unavailable.
%%
%% </li> <li> After you add a rule group to a web ACL, the new rule group
%% rules might be in effect in one area where the web ACL is used and not in
%% another.
%%
%% </li> <li> After you change a rule action setting, you might see the old
%% action in some places and the new action in others.
%%
%% </li> <li> After you add an IP address to an IP set that is in use in a
%% blocking rule, the new address might be blocked in one area while still
%% allowed in another.
%%
%% </li> </ul>
update_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_acl(Client, Input, []).
update_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebACL">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"wafv2">>},
    Host = build_host(<<"wafv2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSWAF_20190729.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
