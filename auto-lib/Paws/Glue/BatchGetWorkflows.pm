
package Paws::Glue::BatchGetWorkflows;
  use Moose;
  has IncludeGraph => (is => 'ro', isa => 'Bool');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetWorkflows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetWorkflowsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetWorkflows - Arguments for method BatchGetWorkflows on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetWorkflows on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetWorkflows.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetWorkflowsResponse = $glue->BatchGetWorkflows(
      Names => [
        'MyNameString', ...    # min: 1, max: 255
      ],
      IncludeGraph => 1,       # OPTIONAL
    );

    # Results:
    my $MissingWorkflows = $BatchGetWorkflowsResponse->MissingWorkflows;
    my $Workflows        = $BatchGetWorkflowsResponse->Workflows;

    # Returns a L<Paws::Glue::BatchGetWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetWorkflows>

=head1 ATTRIBUTES


=head2 IncludeGraph => Bool

Specifies whether to include a graph when returning the workflow
resource metadata.



=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

A list of workflow names, which may be the names returned from the
C<ListWorkflows> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetWorkflows in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

