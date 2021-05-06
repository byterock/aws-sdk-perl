
package Paws::Personalize::CreateDatasetImportJob;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn' , required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::Personalize::DataSource', traits => ['NameInRequest'], request_name => 'dataSource' , required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatasetImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateDatasetImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetImportJob - Arguments for method CreateDatasetImportJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetImportJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDatasetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetImportJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDatasetImportJobResponse = $personalize->CreateDatasetImportJob(
      DataSource => {
        DataLocation => 'MyS3Location',    # max: 256; OPTIONAL
      },
      DatasetArn => 'MyArn',
      JobName    => 'MyName',
      RoleArn    => 'MyRoleArn',

    );

    # Results:
    my $DatasetImportJobArn =
      $CreateDatasetImportJobResponse->DatasetImportJobArn;

    # Returns a L<Paws::Personalize::CreateDatasetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDatasetImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The ARN of the dataset that receives the imported data.



=head2 B<REQUIRED> DataSource => L<Paws::Personalize::DataSource>

The Amazon S3 bucket that contains the training data to import.



=head2 B<REQUIRED> JobName => Str

The name for the dataset import job.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that has permissions to read from the Amazon S3
data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetImportJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

