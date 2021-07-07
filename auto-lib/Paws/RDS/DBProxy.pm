# Generated by default/object.tt
package Paws::RDS::DBProxy;
  use Moose;
  has Auth => (is => 'ro', isa => 'ArrayRef[Paws::RDS::UserAuthConfigInfo]');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DBProxyArn => (is => 'ro', isa => 'Str');
  has DBProxyName => (is => 'ro', isa => 'Str');
  has DebugLogging => (is => 'ro', isa => 'Bool');
  has Endpoint => (is => 'ro', isa => 'Str');
  has EngineFamily => (is => 'ro', isa => 'Str');
  has IdleClientTimeout => (is => 'ro', isa => 'Int');
  has RequireTLS => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedDate => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBProxy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBProxy object:

  $service_obj->Method(Att1 => { Auth => $value, ..., VpcSubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBProxy object:

  $result = $service_obj->Method(...);
  $result->Att1->Auth

=head1 DESCRIPTION

This is prerelease documentation for the RDS Database Proxy feature in
preview release. It is subject to change.

The data structure representing a proxy managed by the RDS Proxy.

This data type is used as a response element in the
C<DescribeDBProxies> action.

=head1 ATTRIBUTES


=head2 Auth => ArrayRef[L<Paws::RDS::UserAuthConfigInfo>]

One or more data structures specifying the authorization mechanism to
connect to the associated RDS DB instance or Aurora DB cluster.


=head2 CreatedDate => Str

The date and time when the proxy was first created.


=head2 DBProxyArn => Str

The Amazon Resource Name (ARN) for the proxy.


=head2 DBProxyName => Str

The identifier for the proxy. This name must be unique for all proxies
owned by your AWS account in the specified AWS Region.


=head2 DebugLogging => Bool

Whether the proxy includes detailed information about SQL statements in
its logs. This information helps you to debug issues involving SQL
behavior or the performance and scalability of the proxy connections.
The debug information includes the text of SQL statements that you
submit through the proxy. Thus, only enable this setting when needed
for debugging, and only when you have security measures in place to
safeguard any sensitive information that appears in the logs.


=head2 Endpoint => Str

The endpoint that you can use to connect to the proxy. You include the
endpoint value in the connection string for a database client
application.


=head2 EngineFamily => Str

Currently, this value is always C<MYSQL>. The engine family applies to
both RDS MySQL and Aurora MySQL.


=head2 IdleClientTimeout => Int

The number of seconds a connection to the proxy can have no activity
before the proxy drops the client connection. The proxy keeps the
underlying database connection open and puts it back into the
connection pool for reuse by later connection requests.

Default: 1800 (30 minutes)

Constraints: 1 to 28,800


=head2 RequireTLS => Bool

Indicates whether Transport Layer Security (TLS) encryption is required
for connections to the proxy.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that the proxy uses to
access Amazon Secrets Manager.


=head2 Status => Str

The current status of this proxy. A status of C<available> means the
proxy is ready to handle requests. Other values indicate that you must
wait for the proxy to be ready, or take some action to resolve an
issue.


=head2 UpdatedDate => Str

The date and time when the proxy was last updated.


=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

Provides a list of VPC security groups that the proxy belongs to.


=head2 VpcSubnetIds => ArrayRef[Str|Undef]

The EC2 subnet IDs for the proxy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

