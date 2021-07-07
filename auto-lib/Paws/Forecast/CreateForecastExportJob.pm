
package Paws::Forecast::CreateForecastExportJob;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination', required => 1);
  has ForecastArn => (is => 'ro', isa => 'Str', required => 1);
  has ForecastExportJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateForecastExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateForecastExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecastExportJob - Arguments for method CreateForecastExportJob on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateForecastExportJob on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateForecastExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateForecastExportJob.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateForecastExportJobResponse = $forecast->CreateForecastExportJob(
      Destination => {
        S3Config => {
          Path      => 'MyS3Path',
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },

      },
      ForecastArn           => 'MyArn',
      ForecastExportJobName => 'MyName',

    );

    # Results:
    my $ForecastExportJobArn =
      $CreateForecastExportJobResponse->ForecastExportJobArn;

    # Returns a L<Paws::Forecast::CreateForecastExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateForecastExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::Forecast::DataDestination>

The location where you want to save the forecast and an AWS Identity
and Access Management (IAM) role that Amazon Forecast can assume to
access the location. The forecast must be exported to an Amazon S3
bucket.

If encryption is used, C<Destination> must include an AWS Key
Management Service (KMS) key. The IAM role must allow Amazon Forecast
permission to access the key.



=head2 B<REQUIRED> ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast that you want to export.



=head2 B<REQUIRED> ForecastExportJobName => Str

The name for the forecast export job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateForecastExportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

