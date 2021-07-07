
package Paws::FraudDetector::CreateRuleResult;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::FraudDetector::Rule', traits => ['NameInRequest'], request_name => 'rule' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateRuleResult

=head1 ATTRIBUTES


=head2 Rule => L<Paws::FraudDetector::Rule>

The created rule.


=head2 _request_id => Str


=cut

1;