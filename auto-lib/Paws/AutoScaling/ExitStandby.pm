
package Paws::AutoScaling::ExitStandby;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExitStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::ExitStandbyAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExitStandbyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ExitStandby - Arguments for method ExitStandby on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExitStandby on the 
Auto Scaling service. Use the attributes of this class
as arguments to method ExitStandby.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExitStandby.

As an example:

  $service_obj->ExitStandby(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 InstanceIds => ArrayRef[Str|Undef]

One or more instance IDs. You must specify at least one instance ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExitStandby in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

