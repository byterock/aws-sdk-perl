
package Paws::SimpleWorkflow::UndeprecateActivityType;
  use Moose;
  has ActivityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', traits => ['NameInRequest'], request_name => 'activityType' , required => 1);
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UndeprecateActivityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::UndeprecateActivityType - Arguments for method UndeprecateActivityType on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UndeprecateActivityType on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method UndeprecateActivityType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UndeprecateActivityType.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->UndeprecateActivityType(
      ActivityType => {
        Name    => 'MyName',       # min: 1, max: 256
        Version => 'MyVersion',    # min: 1, max: 64

      },
      Domain => 'MyDomainName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/UndeprecateActivityType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityType => L<Paws::SimpleWorkflow::ActivityType>

The activity type to undeprecate.



=head2 B<REQUIRED> Domain => Str

The name of the domain of the deprecated activity type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UndeprecateActivityType in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

