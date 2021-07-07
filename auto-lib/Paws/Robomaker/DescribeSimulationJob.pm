
package Paws::Robomaker::DescribeSimulationJob;
  use Moose;
  has Job => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'job', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSimulationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeSimulationJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeSimulationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationJob - Arguments for method DescribeSimulationJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSimulationJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeSimulationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSimulationJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeSimulationJobResponse = $robomaker->DescribeSimulationJob(
      Job => 'MyArn',

    );

    # Results:
    my $Arn                = $DescribeSimulationJobResponse->Arn;
    my $ClientRequestToken = $DescribeSimulationJobResponse->ClientRequestToken;
    my $DataSources        = $DescribeSimulationJobResponse->DataSources;
    my $FailureBehavior    = $DescribeSimulationJobResponse->FailureBehavior;
    my $FailureCode        = $DescribeSimulationJobResponse->FailureCode;
    my $FailureReason      = $DescribeSimulationJobResponse->FailureReason;
    my $IamRole            = $DescribeSimulationJobResponse->IamRole;
    my $LastStartedAt      = $DescribeSimulationJobResponse->LastStartedAt;
    my $LastUpdatedAt      = $DescribeSimulationJobResponse->LastUpdatedAt;
    my $LoggingConfig      = $DescribeSimulationJobResponse->LoggingConfig;
    my $MaxJobDurationInSeconds =
      $DescribeSimulationJobResponse->MaxJobDurationInSeconds;
    my $Name              = $DescribeSimulationJobResponse->Name;
    my $NetworkInterface  = $DescribeSimulationJobResponse->NetworkInterface;
    my $OutputLocation    = $DescribeSimulationJobResponse->OutputLocation;
    my $RobotApplications = $DescribeSimulationJobResponse->RobotApplications;
    my $SimulationApplications =
      $DescribeSimulationJobResponse->SimulationApplications;
    my $SimulationTimeMillis =
      $DescribeSimulationJobResponse->SimulationTimeMillis;
    my $Status    = $DescribeSimulationJobResponse->Status;
    my $Tags      = $DescribeSimulationJobResponse->Tags;
    my $VpcConfig = $DescribeSimulationJobResponse->VpcConfig;

    # Returns a L<Paws::Robomaker::DescribeSimulationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeSimulationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => Str

The Amazon Resource Name (ARN) of the simulation job to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSimulationJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

