package Paws::ManagedBlockchain::NetworkSummary;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Framework => (is => 'ro', isa => 'Str');
  has FrameworkVersion => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::NetworkSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NetworkSummary object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NetworkSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A summary of network configuration properties.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date and time that the network was created.


=head2 Description => Str

  An optional description of the network.


=head2 Framework => Str

  The blockchain framework that the network uses.


=head2 FrameworkVersion => Str

  The version of the blockchain framework that the network uses.


=head2 Id => Str

  The unique identifier of the network.


=head2 Name => Str

  The name of the network.


=head2 Status => Str

  The current status of the network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
