
package Paws::FraudDetector::UpdateRuleMetadata;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' , required => 1);
  has Rule => (is => 'ro', isa => 'Paws::FraudDetector::Rule', traits => ['NameInRequest'], request_name => 'rule' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateRuleMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateRuleMetadata - Arguments for method UpdateRuleMetadata on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleMetadata on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateRuleMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleMetadata.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateRuleMetadataResult = $frauddetector->UpdateRuleMetadata(
      Description => 'Mydescription',
      Rule        => {
        DetectorId  => 'Myidentifier',        # min: 1, max: 64
        RuleId      => 'Myidentifier',        # min: 1, max: 64
        RuleVersion => 'MynonEmptyString',    # min: 1

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateRuleMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The rule description.



=head2 B<REQUIRED> Rule => L<Paws::FraudDetector::Rule>

The rule to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleMetadata in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

