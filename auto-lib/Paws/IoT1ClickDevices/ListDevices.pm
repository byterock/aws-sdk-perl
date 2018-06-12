
package Paws::IoT1ClickDevices::ListDevices;
  use Moose;
  has DeviceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deviceType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::ListDevicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDevices - Arguments for method ListDevices on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the 
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

As an example:

  $service_obj->ListDevices(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 DeviceType => Str

The type of the device, such as "button".



=head2 MaxResults => Int

The maximum number of results to return per request. If not set, a
default value of 100 is used.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
