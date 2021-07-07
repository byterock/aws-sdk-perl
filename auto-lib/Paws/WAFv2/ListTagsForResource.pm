
package Paws::WAFv2::ListTagsForResource;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $ListTagsForResourceResponse = $wafv2->ListTagsForResource(
      ResourceARN => 'MyResourceArn',
      Limit       => 1,                 # OPTIONAL
      NextMarker  => 'MyNextMarker',    # OPTIONAL
    );

    # Results:
    my $NextMarker         = $ListTagsForResourceResponse->NextMarker;
    my $TagInfoForResource = $ListTagsForResourceResponse->TagInfoForResource;

    # Returns a L<Paws::WAFv2::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of objects that you want AWS WAF to return for this
request. If more objects are available, in the response, AWS WAF
provides a C<NextMarker> value that you can use in a subsequent call to
get the next batch of objects.



=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, AWS WAF returns a C<NextMarker> value in the response. To
retrieve the next batch of objects, provide the marker from the prior
call in your next request.



=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

