
package Paws::WAFv2::GetSampledRequestsResponse;
  use Moose;
  has PopulationSize => (is => 'ro', isa => 'Int');
  has SampledRequests => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::SampledHTTPRequest]');
  has TimeWindow => (is => 'ro', isa => 'Paws::WAFv2::TimeWindow');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::GetSampledRequestsResponse

=head1 ATTRIBUTES


=head2 PopulationSize => Int

The total number of requests from which C<GetSampledRequests> got a
sample of C<MaxItems> requests. If C<PopulationSize> is less than
C<MaxItems>, the sample includes every request that your AWS resource
received during the specified time range.


=head2 SampledRequests => ArrayRef[L<Paws::WAFv2::SampledHTTPRequest>]

A complex type that contains detailed information about each of the
requests in the sample.


=head2 TimeWindow => L<Paws::WAFv2::TimeWindow>

Usually, C<TimeWindow> is the time range that you specified in the
C<GetSampledRequests> request. However, if your AWS resource received
more than 5,000 requests during the time range that you specified in
the request, C<GetSampledRequests> returns the time range for the first
5,000 requests.


=head2 _request_id => Str


=cut

1;