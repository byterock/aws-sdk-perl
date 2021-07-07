
package Paws::Transcribe::ListTranscriptionJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TranscriptionJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::TranscriptionJobSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTranscriptionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<ListTranscriptionJobs> operation returns a page of jobs at a
time. The maximum size of the page is set by the C<MaxResults>
parameter. If there are more jobs in the list than the page size,
Amazon Transcribe returns the C<NextPage> token. Include the token in
the next request to the C<ListTranscriptionJobs> operation to return in
the next page of jobs.


=head2 Status => Str

The requested status of the jobs returned.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 TranscriptionJobSummaries => ArrayRef[L<Paws::Transcribe::TranscriptionJobSummary>]

A list of objects containing summary information for a transcription
job.


=head2 _request_id => Str


=cut

1;