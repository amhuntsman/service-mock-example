Service Mock Example
====================

Many concepts used in this example are shared from the following article:

*  <http://www.ibm.com/developerworks/library/ws-mocks/>

Summary: an application implements an internal web service that is consumed
across multiple user or system endpoints. In practice, the different endpoints
are likely to be developed in isolation by different teams of developers, and
thus end-to-end tests may require consuming internal services which have not
yet been implemented.

The solution follows these basic steps:

1.  Produce the specification for the internal service - protocol,
    resources, and so on
2.  Create a test suite library which validate services against the
    specifications
3.  Implement a mock service which runs against the test library and produces
    the expected responses to available resources but has no other side
    effects on the development system
4.  Use the same test library to develop the "live" service(s)
5.  As specifications change, alter the test library to match, then update
    services to pass the new tests

The example code here is presented in two separate projects:
_case-service-spec_, which defines test cases for the service, and
_case-service-mock_, which implements the service based on the test by simply
producing the expected responses.

_case-service-spec_ is where most of the interesting work is done. The tests
are written using [minitest](https://github.com/seattlerb/minitest) and
[rack-test](https://github.com/brynary/rack-test), though any testing
framework will do, preferably one which integrates with an existing CI
solution. The actual tests are kept in the /lib/case_service/spec/tests
directory. Two responses are tested for: a simple "hello" message, and a list
of existing case records which are pre-defined as a fixture in spec.rb.

_case-service-spec_ is also packaged as a Ruby gem, so that services
implementing the spec can simply include it within their own Gemfile. The
service mock requires spec.rb in its own test helper, points the spec to the
Rack application being tested, then requires the individual test files. The
development/production services will implement the test gem in the same
fashion.