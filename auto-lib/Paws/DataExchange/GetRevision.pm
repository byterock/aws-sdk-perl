
package Paws::DataExchange::GetRevision;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RevisionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRevision');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::GetRevisionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetRevision - Arguments for method GetRevision on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRevision on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRevision.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetRevisionResponse = $dataexchange->GetRevision(
      DataSetId  => 'My__string',
      RevisionId => 'My__string',

    );

    # Results:
    my $Arn       = $GetRevisionResponse->Arn;
    my $Comment   = $GetRevisionResponse->Comment;
    my $CreatedAt = $GetRevisionResponse->CreatedAt;
    my $DataSetId = $GetRevisionResponse->DataSetId;
    my $Finalized = $GetRevisionResponse->Finalized;
    my $Id        = $GetRevisionResponse->Id;
    my $SourceId  = $GetRevisionResponse->SourceId;
    my $Tags      = $GetRevisionResponse->Tags;
    my $UpdatedAt = $GetRevisionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRevision in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

