
package Paws::S3::GetBucketTaggingOutput;
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', request_name => 'Tag', traits => ['NameInRequest'], required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[L<Paws::S3::Tag>]

Contains the tag set.




=cut

