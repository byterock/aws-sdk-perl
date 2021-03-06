
package Paws::ApplicationInsights::UpdateComponent;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has NewComponentName => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateComponent - Arguments for method UpdateComponent on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponent on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponent.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateComponentResponse = $applicationinsights->UpdateComponent(
      ComponentName     => 'MyComponentName',
      ResourceGroupName => 'MyResourceGroupName',
      NewComponentName  => 'MyNewComponentName',        # OPTIONAL
      ResourceList      => [ 'MyResourceARN', ... ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 NewComponentName => Str

The new name of the component.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 ResourceList => ArrayRef[Str|Undef]

The list of resource ARNs that belong to the component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponent in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

