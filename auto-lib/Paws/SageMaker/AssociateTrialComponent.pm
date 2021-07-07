
package Paws::SageMaker::AssociateTrialComponent;
  use Moose;
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);
  has TrialName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTrialComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::AssociateTrialComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AssociateTrialComponent - Arguments for method AssociateTrialComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTrialComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method AssociateTrialComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTrialComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $AssociateTrialComponentResponse =
      $api . sagemaker->AssociateTrialComponent(
      TrialComponentName => 'MyExperimentEntityName',
      TrialName          => 'MyExperimentEntityName',

      );

    # Results:
    my $TrialArn          = $AssociateTrialComponentResponse->TrialArn;
    my $TrialComponentArn = $AssociateTrialComponentResponse->TrialComponentArn;

    # Returns a L<Paws::SageMaker::AssociateTrialComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/AssociateTrialComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrialComponentName => Str

The name of the component to associated with the trial.



=head2 B<REQUIRED> TrialName => Str

The name of the trial to associate with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTrialComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

