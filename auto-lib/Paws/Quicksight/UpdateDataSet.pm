
package Paws::Quicksight::UpdateDataSet;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ColumnGroups => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnGroup]');
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has ImportMode => (is => 'ro', isa => 'Str', required => 1);
  has LogicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::LogicalTableMap');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::PhysicalTableMap', required => 1);
  has RowLevelPermissionDataSet => (is => 'ro', isa => 'Paws::Quicksight::RowLevelPermissionDataSet');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sets/{DataSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSet - Arguments for method UpdateDataSet on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSet on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSet.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDataSetResponse = $quicksight->UpdateDataSet(
      AwsAccountId     => 'MyAwsAccountId',
      DataSetId        => 'MyResourceId',
      ImportMode       => 'SPICE',
      Name             => 'MyResourceName',
      PhysicalTableMap => {
        'MyPhysicalTableId' => {
          CustomSql => {
            DataSourceArn => 'MyArn',
            Name          => 'MyCustomSqlName',    # min: 1, max: 64
            SqlQuery      => 'MySqlQuery',         # min: 1, max: 65536
            Columns       => [
              {
                Name => 'MyColumnName',            # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048
          },    # OPTIONAL
          RelationalTable => {
            DataSourceArn => 'MyArn',
            InputColumns  => [
              {
                Name => 'MyColumnName',    # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048
            Name   => 'MyRelationalTableName',      # min: 1, max: 64
            Schema => 'MyRelationalTableSchema',    # max: 64; OPTIONAL
          },    # OPTIONAL
          S3Source => {
            DataSourceArn => 'MyArn',
            InputColumns  => [
              {
                Name => 'MyColumnName',    # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048
            UploadSettings => {
              ContainsHeader => 1,                # OPTIONAL
              Delimiter      => 'MyDelimiter',    # min: 1, max: 1; OPTIONAL
              Format =>
                'CSV',    # values: CSV, TSV, CLF, ELF, XLSX, JSON; OPTIONAL
              StartFromRow => 1,    # min: 1; OPTIONAL
              TextQualifier =>
                'DOUBLE_QUOTE',   # values: DOUBLE_QUOTE, SINGLE_QUOTE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # key: min: 1, max: 64
      },
      ColumnGroups => [
        {
          GeoSpatialColumnGroup => {
            Columns => [
              'MyColumnName', ...    # min: 1, max: 128
            ],                       # min: 1, max: 16
            CountryCode => 'US',                   # values: US
            Name        => 'MyColumnGroupName',    # min: 1, max: 64

          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      LogicalTableMap => {
        'MyLogicalTableId' => {
          Alias  => 'MyLogicalTableAlias',    # min: 1, max: 64
          Source => {
            JoinInstruction => {
              LeftOperand  => 'MyLogicalTableId',    # min: 1, max: 64
              OnClause     => 'MyOnClause',          # min: 1, max: 512
              RightOperand => 'MyLogicalTableId',    # min: 1, max: 64
              Type => 'INNER',    # values: INNER, OUTER, LEFT, RIGHT

            },    # OPTIONAL
            PhysicalTableId => 'MyPhysicalTableId',    # min: 1, max: 64
          },
          DataTransforms => [
            {
              CastColumnTypeOperation => {
                ColumnName => 'MyColumnName',          # min: 1, max: 128
                NewColumnType =>
                  'STRING',    # values: STRING, INTEGER, DECIMAL, DATETIME
                Format => 'MyTypeCastFormat',    # max: 32; OPTIONAL
              },    # OPTIONAL
              CreateColumnsOperation => {
                Columns => [
                  {
                    ColumnId   => 'MyColumnId',      # min: 1, max: 64
                    ColumnName => 'MyColumnName',    # min: 1, max: 128
                    Expression => 'MyExpression',    # min: 1, max: 4096

                  },
                  ...
                ],                                   # min: 1, max: 128

              },    # OPTIONAL
              FilterOperation => {
                ConditionExpression => 'MyExpression',    # min: 1, max: 4096

              },    # OPTIONAL
              ProjectOperation => {
                ProjectedColumns => [ 'MyString', ... ],    # min: 1, max: 2000

              },    # OPTIONAL
              RenameColumnOperation => {
                ColumnName    => 'MyColumnName',    # min: 1, max: 128
                NewColumnName => 'MyColumnName',    # min: 1, max: 128

              },    # OPTIONAL
              TagColumnOperation => {
                ColumnName => 'MyColumnName',    # min: 1, max: 128
                Tags       => [
                  {
                    ColumnGeographicRole => 'COUNTRY'
                    , # values: COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 16

              },    # OPTIONAL
            },
            ...
          ],        # min: 1, max: 2048; OPTIONAL
        },    # key: min: 1, max: 64
      },    # OPTIONAL
      RowLevelPermissionDataSet => {
        Arn              => 'MyArn',
        PermissionPolicy => 'GRANT_ACCESS',  # values: GRANT_ACCESS, DENY_ACCESS

      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $UpdateDataSetResponse->Arn;
    my $DataSetId    = $UpdateDataSetResponse->DataSetId;
    my $IngestionArn = $UpdateDataSetResponse->IngestionArn;
    my $IngestionId  = $UpdateDataSetResponse->IngestionId;
    my $RequestId    = $UpdateDataSetResponse->RequestId;
    my $Status       = $UpdateDataSetResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]

Groupings of columns that work together in certain QuickSight features.
Currently, only geospatial hierarchy is supported.



=head2 B<REQUIRED> DataSetId => Str

The ID for the dataset that you want to update. This ID is unique per
AWS Region for each AWS account.



=head2 B<REQUIRED> ImportMode => Str

Indicates whether you want to import the data into SPICE.

Valid values are: C<"SPICE">, C<"DIRECT_QUERY">

=head2 LogicalTableMap => L<Paws::Quicksight::LogicalTableMap>

Configures the combination and transformation of the data from the
physical tables.



=head2 B<REQUIRED> Name => Str

The display name for the dataset.



=head2 B<REQUIRED> PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

Declares the physical tables that are available in the underlying data
sources.



=head2 RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>

The row-level security configuration for the data you want to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSet in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

