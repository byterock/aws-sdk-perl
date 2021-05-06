
package Paws::IoTThingsGraph::SearchFlowExecutions;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has FlowExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowExecutionId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has SystemInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'systemInstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchFlowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::SearchFlowExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchFlowExecutions - Arguments for method SearchFlowExecutions on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchFlowExecutions on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method SearchFlowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchFlowExecutions.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $SearchFlowExecutionsResponse = $iotthingsgraph->SearchFlowExecutions(
      SystemInstanceId => 'MyUrn',
      EndTime          => '1970-01-01T01:00:00',    # OPTIONAL
      FlowExecutionId  => 'MyFlowExecutionId',      # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyNextToken',            # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchFlowExecutionsResponse->NextToken;
    my $Summaries = $SearchFlowExecutionsResponse->Summaries;

    # Returns a L<Paws::IoTThingsGraph::SearchFlowExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/SearchFlowExecutions>

=head1 ATTRIBUTES


=head2 EndTime => Str

The date and time of the latest flow execution to return.



=head2 FlowExecutionId => Str

The ID of a flow execution.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The string that specifies the next page of results. Use this when
you're paginating results.



=head2 StartTime => Str

The date and time of the earliest flow execution to return.



=head2 B<REQUIRED> SystemInstanceId => Str

The ID of the system instance that contains the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchFlowExecutions in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

