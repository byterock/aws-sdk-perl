
package Paws::Quicksight::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'keys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/{ResourceArn}/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UntagResource - Arguments for method UntagResource on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UntagResourceResponse = $quicksight->UntagResource(
      ResourceArn => 'MyArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $RequestId = $UntagResourceResponse->RequestId;
    my $Status    = $UntagResourceResponse->Status;

    # Returns a L<Paws::Quicksight::UntagResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to untag.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The keys of the key-value pairs for the resource tag or tags assigned
to the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

