
package Paws::IAM::CreateUser;
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has PermissionsBoundary => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateUser - Arguments for method CreateUser on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To create an IAM user
    # The following create-user command creates an IAM user named Bob in the
    # current account.
    my $CreateUserResponse = $iam->CreateUser( 'UserName' => 'Bob' );

    # Results:
    my $User = $CreateUserResponse->User;

    # Returns a L<Paws::IAM::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateUser>

=head1 ATTRIBUTES


=head2 Path => Str

The path for the user name. For more information about paths, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (C<\u0021>) through the DEL character (C<\u007F>),
including most punctuation characters, digits, and upper and lowercased
letters.



=head2 PermissionsBoundary => Str

The ARN of the policy that is used to set the permissions boundary for
the user.



=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that you want to attach to the newly created user. Each
tag consists of a key name and an associated value. For more
information about tagging, see Tagging IAM Identities
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

If any one of the tags is invalid or if you exceed the allowed number
of tags per user, then the entire request fails and the user is not
created.



=head2 B<REQUIRED> UserName => Str

The name of the user to create.

IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

