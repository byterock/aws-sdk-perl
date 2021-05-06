
package Paws::SageMaker::ListMonitoringExecutionsResponse;
  use Moose;
  has MonitoringExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringExecutionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringExecutionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoringExecutionSummaries => ArrayRef[L<Paws::SageMaker::MonitoringExecutionSummary>]

A JSON array in which each element is a summary for a monitoring
execution.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of jobs, use it in the subsequent reques


=head2 _request_id => Str


=cut

1;