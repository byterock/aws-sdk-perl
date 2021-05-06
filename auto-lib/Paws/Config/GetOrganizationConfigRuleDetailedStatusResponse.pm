
package Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleDetailedStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::MemberAccountStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConfigRuleDetailedStatus => ArrayRef[L<Paws::Config::MemberAccountStatus>]

A list of C<MemberAccountStatus> objects.


=head2 _request_id => Str


=cut

1;