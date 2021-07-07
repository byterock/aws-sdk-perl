
package Paws::Backup::StartCopyJobOutput;
  use Moose;
  has CopyJobId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartCopyJobOutput

=head1 ATTRIBUTES


=head2 CopyJobId => Str

Uniquely identifies a request to AWS Backup to copy a resource.


=head2 CreationDate => Str

The date and time that a backup job is started, in Unix format and
Coordinated Universal Time (UTC). The value of CreationDate is accurate
to milliseconds. For example, the value 1516925490.087 represents
Friday, January 26, 2018 12:11:30.087 AM. E<gt>


=head2 _request_id => Str


=cut

