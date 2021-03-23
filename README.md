# AWS clients for Erlang

[![Actions Status](https://github.com/aws-beam/aws-erlang/workflows/Build/badge.svg)](https://github.com/aws-beam/aws-erlang/actions)

:rocket: Create, configure, and manage AWS services from Erlang code. :rocket:

## Features

* A clean API separated per service. One module per service.
* Support for most of the AWS services.
* Generated by [aws-codegen](https://github.com/aws-beam/aws-codegen) using the
  same JSON descriptions of AWS services used to build the
  [AWS SDK for Go](https://github.com/aws/aws-sdk-go/tree/master/models/apis).
* Documentation updated from the official AWS docs.

## Usage

Here is an example of listing Amazon Kinesis streams. First of all,
start a shell with `rebar3 shell`, then:

```erlang
> Client = aws_client:make_client(<<"my-access-key-id">>, <<"my-secret-access-key">>, <<"eu-west-1">>),
[...]
> {ok, Result, _Response} = aws_kinesis:list_streams(Client, #{}),
[...]
> io:format("~p~n", [Result]).
#{<<"HasMoreStreams">> => false,<<"StreamNames">> => []}
```

Here is another example, this time using a _temporary_ client, showing
how to upload a file to _S3_ and how to fetch it back:

```erlang
> Client = aws_client:make_temporary_client(<<"my-access-key-id">>, <<"my-secret-access-key">>, <<"my-token">>, <<"eu-west-1">>).
[...]
> {ok, Content} = file:read_file("/tmp/erlang-logo.png").
[...]
> aws_s3:put_object(Client, <<"my-bucket">>, <<"my-key">>, #{<<"Body">> => Content}).
[...]
> {ok, Response, _} = aws_s3:get_object(Client, <<"my-bucket">>, <<"my-key">>).
[...]
> Content = maps:get(<<"Body">>, Response).
```

## Installation

Simply add the library to your `rebar.config`:

```erlang
{deps, [{aws, "0.3.0", {pkg, aws_erlang}}]}.
```

## Obtaining Credentials

Credentials can be obtained via the separate [aws_credentials](https://github.com/aws-beam/aws_credentials) application, which can be configured to fetch credentials from:

* Erlang environment variables
* OS environment variables
* An AWS credentials file
* ECS task credentials
* EC2 metadata (including v2 - IMDS)

Here is an example on how to obtain credentials:

```erlang
> Credentials = aws_credentials:get_credentials().
[...]
> #{ access_key_id := AccessKeyId
   , token := Token
   , region := Region
   , secret_access_key := SecretAccessKey } = Credentials.
```

The `aws_credentials` application can be installed by adding the following to your `rebar.config`:

```erlang
{deps, [{aws_credentials, "0.1.0"}]}.
```

## Development

The service-specific modules are generated using the [aws-codegen](https://github.com/aws-beam/aws-codegen) library from the JSON descriptions of AWS services provided by Amazon.

The rest of the code is manually written and used as support for the generated code.

## Documentation

Online:

* [Hex Docs](https://hexdocs.pm/aws_erlang/)

Locally:

```bash
$ rebar3 docs
```

## Running Tests

```bash
$ rebar3 eunit
```

## License

Copyright 2015 Jamshed Kakar <jkakar@kakar.ca>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
