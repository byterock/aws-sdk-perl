
package Paws::Forecast::CreateDataset;
  use Moose;
  has DataFrequency => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DatasetType => (is => 'ro', isa => 'Str', required => 1);
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has Schema => (is => 'ro', isa => 'Paws::Forecast::Schema', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDataset - Arguments for method CreateDataset on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateDatasetResponse = $forecast->CreateDataset(
      DatasetName => 'MyName',
      DatasetType => 'TARGET_TIME_SERIES',
      Domain      => 'RETAIL',
      Schema      => {
        Attributes => [
          {
            AttributeName => 'MyName',    # min: 1, max: 63
            AttributeType =>
              'string',    # values: string, integer, float, timestamp; OPTIONAL
          },
          ...
        ],                 # OPTIONAL
      },
      DataFrequency    => 'MyFrequency',    # OPTIONAL
      EncryptionConfig => {
        KMSKeyArn => 'MyKMSKeyArn',         # max: 256
        RoleArn   => 'MyArn',               # max: 256

      },    # OPTIONAL
    );

    # Results:
    my $DatasetArn = $CreateDatasetResponse->DatasetArn;

    # Returns a L<Paws::Forecast::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateDataset>

=head1 ATTRIBUTES


=head2 DataFrequency => Str

The frequency of data collection. This parameter is required for
RELATED_TIME_SERIES datasets.

Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour),
30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5
minutes), and 1min (1 minute). For example, "D" indicates every day and
"15min" indicates every 15 minutes.



=head2 B<REQUIRED> DatasetName => Str

A name for the dataset.



=head2 B<REQUIRED> DatasetType => Str

The dataset type. Valid values depend on the chosen C<Domain>.

Valid values are: C<"TARGET_TIME_SERIES">, C<"RELATED_TIME_SERIES">, C<"ITEM_METADATA">

=head2 B<REQUIRED> Domain => Str

The domain associated with the dataset. When you add a dataset to a
dataset group, this value and the value specified for the C<Domain>
parameter of the CreateDatasetGroup operation must match.

The C<Domain> and C<DatasetType> that you choose determine the fields
that must be present in the training data that you import to the
dataset. For example, if you choose the C<RETAIL> domain and
C<TARGET_TIME_SERIES> as the C<DatasetType>, Amazon Forecast requires
C<item_id>, C<timestamp>, and C<demand> fields to be present in your
data. For more information, see howitworks-datasets-groups.

Valid values are: C<"RETAIL">, C<"CUSTOM">, C<"INVENTORY_PLANNING">, C<"EC2_CAPACITY">, C<"WORK_FORCE">, C<"WEB_TRAFFIC">, C<"METRICS">

=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.



=head2 B<REQUIRED> Schema => L<Paws::Forecast::Schema>

The schema for the dataset. The schema attributes and their order must
match the fields in your data. The dataset C<Domain> and C<DatasetType>
that you choose determine the minimum required fields in your training
data. For information about the required fields for a specific dataset
domain and type, see howitworks-domains-ds-types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

