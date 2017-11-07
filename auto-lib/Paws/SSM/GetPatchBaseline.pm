
package Paws::SSM::GetPatchBaseline;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPatchBaseline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetPatchBaselineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetPatchBaseline - Arguments for method GetPatchBaseline on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPatchBaseline on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method GetPatchBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPatchBaseline.

As an example:

  $service_obj->GetPatchBaseline(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineId => Str

The ID of the patch baseline to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPatchBaseline in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

