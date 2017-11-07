package Paws::IAM::ServiceSpecificCredential;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has ServicePassword => (is => 'ro', isa => 'Str', required => 1);
  has ServiceSpecificCredentialId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceUserName => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ServiceSpecificCredential

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ServiceSpecificCredential object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ServiceSpecificCredential object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

Contains the details of a service specific credential.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateDate => Str

  The date and time, in ISO 8601 date-time format, when the
service-specific credential were created.


=head2 B<REQUIRED> ServiceName => Str

  The name of the service associated with the service-specific
credential.


=head2 B<REQUIRED> ServicePassword => Str

  The generated password for the service-specific credential.


=head2 B<REQUIRED> ServiceSpecificCredentialId => Str

  The unique identifier for the service-specific credential.


=head2 B<REQUIRED> ServiceUserName => Str

  The generated user name for the service-specific credential. This value
is generated by combining the IAM user's name combined with the ID
number of the AWS account, as in C<jane-at-123456789012>, for example.
This value cannot be configured by the user.


=head2 B<REQUIRED> Status => Str

  The status of the service-specific credential. C<Active> means the key
is valid for API calls, while C<Inactive> means it is not.


=head2 B<REQUIRED> UserName => Str

  The name of the IAM user associated with the service-specific
credential.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

