package Paws::Batch::NodeOverrides;
  use Moose;
  has NodePropertyOverrides => (is => 'ro', isa => 'ArrayRef[Paws::Batch::NodePropertyOverride]', request_name => 'nodePropertyOverrides', traits => ['NameInRequest']);
  has NumNodes => (is => 'ro', isa => 'Int', request_name => 'numNodes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodeOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodeOverrides object:

  $service_obj->Method(Att1 => { NodePropertyOverrides => $value, ..., NumNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodeOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->NodePropertyOverrides

=head1 DESCRIPTION

Object representing any node overrides to a job definition that is used
in a SubmitJob API operation.

=head1 ATTRIBUTES


=head2 NodePropertyOverrides => ArrayRef[L<Paws::Batch::NodePropertyOverride>]

  The node property overrides for the job.


=head2 NumNodes => Int

  The number of nodes to use with a multi-node parallel job. This value
overrides the number of nodes that are specified in the job definition.
To use this override:

=over

=item *

There must be at least one node range in your job definition that has
an open upper boundary (such as C<:> or C<n:>).

=item *

The lower boundary of the node range specified in the job definition
must be fewer than the number of nodes specified in the override.

=item *

The main node index specified in the job definition must be fewer than
the number of nodes specified in the override.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
