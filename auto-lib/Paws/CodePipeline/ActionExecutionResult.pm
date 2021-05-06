# Generated by default/object.tt
package Paws::CodePipeline::ActionExecutionResult;
  use Moose;
  has ExternalExecutionId => (is => 'ro', isa => 'Str', request_name => 'externalExecutionId', traits => ['NameInRequest']);
  has ExternalExecutionSummary => (is => 'ro', isa => 'Str', request_name => 'externalExecutionSummary', traits => ['NameInRequest']);
  has ExternalExecutionUrl => (is => 'ro', isa => 'Str', request_name => 'externalExecutionUrl', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecutionResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecutionResult object:

  $service_obj->Method(Att1 => { ExternalExecutionId => $value, ..., ExternalExecutionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionResult object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalExecutionId

=head1 DESCRIPTION

Execution result information, such as the external execution ID.

=head1 ATTRIBUTES


=head2 ExternalExecutionId => Str

The action provider's external ID for the action execution.


=head2 ExternalExecutionSummary => Str

The action provider's summary for the action execution.


=head2 ExternalExecutionUrl => Str

The deepest external link to the external resource (for example, a
repository URL or deployment endpoint) that is used when running the
action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

