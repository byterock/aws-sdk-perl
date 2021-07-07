
package Paws::Forecast::ListDatasetImportJobs;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetImportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::ListDatasetImportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListDatasetImportJobs - Arguments for method ListDatasetImportJobs on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetImportJobs on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method ListDatasetImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetImportJobs.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $ListDatasetImportJobsResponse = $forecast->ListDatasetImportJobs(
      Filters => [
        {
          Condition => 'IS',          # values: IS, IS_NOT
          Key       => 'MyString',    # max: 256
          Value     => 'MyArn',       # max: 256

        },
        ...
      ],                              # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatasetImportJobs = $ListDatasetImportJobsResponse->DatasetImportJobs;
    my $NextToken         = $ListDatasetImportJobsResponse->NextToken;

    # Returns a L<Paws::Forecast::ListDatasetImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/ListDatasetImportJobs>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Forecast::Filter>]

An array of filters. For each filter, you provide a condition and a
match statement. The condition is either C<IS> or C<IS_NOT>, which
specifies whether to include or exclude the datasets that match the
statement from the list, respectively. The match statement consists of
a key and a value.

B<Filter properties>

=over

=item *

C<Condition> - The condition to apply. Valid values are C<IS> and
C<IS_NOT>. To include the datasets that match the statement, specify
C<IS>. To exclude matching datasets, specify C<IS_NOT>.

=item *

C<Key> - The name of the parameter to filter on. Valid values are
C<DatasetArn> and C<Status>.

=item *

C<Value> - The value to match.

=back

For example, to list all dataset import jobs whose status is ACTIVE,
you specify the following filter:

C<"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE"
} ]>



=head2 MaxResults => Int

The number of items to return in the response.



=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetImportJobs in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

