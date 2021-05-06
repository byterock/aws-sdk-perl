
package Paws::GuardDuty::GetFilterResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Rank => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rank');
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFilterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">
=head2 Description => Str

The description of the filter.


=head2 B<REQUIRED> FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria to be used in the filter for querying findings.


=head2 B<REQUIRED> Name => Str

The name of the filter.


=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.


=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags of the filter resource.


=head2 _request_id => Str


=cut

