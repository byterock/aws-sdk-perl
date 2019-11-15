package Paws::Robomaker::NetworkInterface;
  use Moose;
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PublicIpAddress => (is => 'ro', isa => 'Str', request_name => 'publicIpAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::NetworkInterface object:

  $service_obj->Method(Att1 => { NetworkInterfaceId => $value, ..., PublicIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->NetworkInterfaceId

=head1 DESCRIPTION

Describes a network interface.

=head1 ATTRIBUTES


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The IPv4 address of the network interface within the subnet.


=head2 PublicIpAddress => Str

  The IPv4 public address of the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
