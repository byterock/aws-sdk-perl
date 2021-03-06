
package Paws::GuardDuty::GetMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Member]', traits => ['NameInRequest'], request_name => 'members', required => 1);
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Members => ArrayRef[L<Paws::GuardDuty::Member>]

A list of members.


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[L<Paws::GuardDuty::UnprocessedAccount>]

A list of objects containing the unprocessed account and a result
string explaining why it was unprocessed.


=head2 _request_id => Str


=cut

