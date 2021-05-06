
package Paws::AccessAnalyzer::ListFindings;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerArn', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::AccessAnalyzer::FilterCriteriaMap', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Paws::AccessAnalyzer::SortCriteria', traits => ['NameInRequest'], request_name => 'sort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/finding');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::ListFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListFindings - Arguments for method ListFindings on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $ListFindingsResponse = $access -analyzer->ListFindings(
      AnalyzerArn => 'MyAnalyzerArn',
      Filter      => {
        'MyString' => {
          Contains => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
          Eq       => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
          Exists => 1,                        # OPTIONAL
          Neq => [ 'MyString', ... ],         # min: 1, max: 20; OPTIONAL
        },
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      Sort       => {
        AttributeName => 'MyString',
        OrderBy       => 'ASC',        # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Findings  = $ListFindingsResponse->Findings;
    my $NextToken = $ListFindingsResponse->NextToken;

    # Returns a L<Paws::AccessAnalyzer::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/ListFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer to retrieve findings from.



=head2 Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

A filter to match for the findings to return.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned.



=head2 Sort => L<Paws::AccessAnalyzer::SortCriteria>

The sort order for the findings returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

