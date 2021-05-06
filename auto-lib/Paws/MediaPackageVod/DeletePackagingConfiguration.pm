
package Paws::MediaPackageVod::DeletePackagingConfiguration;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePackagingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_configurations/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::DeletePackagingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DeletePackagingConfiguration - Arguments for method DeletePackagingConfiguration on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePackagingConfiguration on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method DeletePackagingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePackagingConfiguration.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $DeletePackagingConfigurationResponse =
      $mediapackage -vod->DeletePackagingConfiguration(
      Id => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/DeletePackagingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the MediaPackage VOD PackagingConfiguration resource to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePackagingConfiguration in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

