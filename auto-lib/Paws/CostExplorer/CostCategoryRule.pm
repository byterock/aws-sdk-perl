package Paws::CostExplorer::CostCategoryRule;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::CostExplorer::Expression', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CostCategoryRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CostCategoryRule object:

  $service_obj->Method(Att1 => { Rule => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CostCategoryRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Rule

=head1 DESCRIPTION

I<B<Cost Category is in preview release for AWS Billing and Cost
Management and is subject to change. Your use of Cost Categories is
subject to the Beta Service Participation terms of the AWS Service
Terms (https://aws.amazon.com/service-terms/) (Section 1.10).>>

Rules are processed in order. If there are multiple rules that match
the line item, then the first rule to match is used to determine that
Cost Category value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rule => L<Paws::CostExplorer::Expression>

  An Expression
(http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object used to categorize costs. This supports dimensions, Tags, and
nested expressions. Currently the only dimensions supported is
C<LINKED_ACCOUNT>.

Root level C<OR> is not supported. We recommend you create a separate
rule instead.


=head2 B<REQUIRED> Value => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
