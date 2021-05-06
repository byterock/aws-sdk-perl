
package Paws::ECS::UpdateTaskSet;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has Scale => (is => 'ro', isa => 'Paws::ECS::Scale', traits => ['NameInRequest'], request_name => 'scale' , required => 1);
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has TaskSet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskSet' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTaskSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateTaskSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateTaskSet - Arguments for method UpdateTaskSet on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTaskSet on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateTaskSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTaskSet.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateTaskSetResponse = $ecs->UpdateTaskSet(
      Cluster => 'MyString',
      Scale   => {
        Unit  => 'PERCENT',    # values: PERCENT; OPTIONAL
        Value => 1,            # OPTIONAL
      },
      Service => 'MyString',
      TaskSet => 'MyString',

    );

    # Results:
    my $TaskSet = $UpdateTaskSetResponse->TaskSet;

    # Returns a L<Paws::ECS::UpdateTaskSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateTaskSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task set exists in.



=head2 B<REQUIRED> Scale => L<Paws::ECS::Scale>





=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service that
the task set exists in.



=head2 B<REQUIRED> TaskSet => Str

The short name or full Amazon Resource Name (ARN) of the task set to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTaskSet in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

