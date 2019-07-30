package Paws::SecurityHub::Insight;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::SecurityHub::AwsSecurityFindingFilters', required => 1);
  has GroupByAttribute => (is => 'ro', isa => 'Str', required => 1);
  has InsightArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Insight

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Insight object:

  $service_obj->Method(Att1 => { Filters => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Insight object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

Contains information about a Security Hub insight.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

  One or more attributes used to filter the findings included in the
insight. Only findings that match the criteria defined in the filters
are included in the insight.


=head2 B<REQUIRED> GroupByAttribute => Str

  The attribute that the insight's findings are grouped by. This
attribute is used as a findings aggregator for the purposes of viewing
and managing multiple related findings under a single operand.


=head2 B<REQUIRED> InsightArn => Str

  The ARN of a Security Hub insight.


=head2 B<REQUIRED> Name => Str

  The name of a Security Hub insight.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
