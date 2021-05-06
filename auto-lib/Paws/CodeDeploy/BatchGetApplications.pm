
package Paws::CodeDeploy::BatchGetApplications;
  use Moose;
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicationNames' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetApplicationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplications - Arguments for method BatchGetApplications on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetApplications on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method BatchGetApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetApplications.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $BatchGetApplicationsOutput = $codedeploy->BatchGetApplications(
      ApplicationNames => [
        'MyApplicationName', ...    # min: 1, max: 100
      ],

    );

    # Results:
    my $ApplicationsInfo = $BatchGetApplicationsOutput->ApplicationsInfo;

    # Returns a L<Paws::CodeDeploy::BatchGetApplicationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/BatchGetApplications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationNames => ArrayRef[Str|Undef]

A list of application names separated by spaces. The maximum number of
application names you can specify is 25.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetApplications in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

