
package Paws::EFS::TagResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/resource-tags/{ResourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::TagResource - Arguments for method TagResource on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    $elasticfilesystem->TagResource(
      ResourceId => 'MyResourceId',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID specifying the EFS resource that you want to create a tag for.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::EFS::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
