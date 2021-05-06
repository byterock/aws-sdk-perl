
package Paws::MediaPackageVod::DescribePackagingConfiguration;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackagingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_configurations/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::DescribePackagingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DescribePackagingConfiguration - Arguments for method DescribePackagingConfiguration on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackagingConfiguration on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method DescribePackagingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackagingConfiguration.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $DescribePackagingConfigurationResponse =
      $mediapackage -vod->DescribePackagingConfiguration(
      Id => 'My__string',

      );

    # Results:
    my $Arn         = $DescribePackagingConfigurationResponse->Arn;
    my $CmafPackage = $DescribePackagingConfigurationResponse->CmafPackage;
    my $DashPackage = $DescribePackagingConfigurationResponse->DashPackage;
    my $HlsPackage  = $DescribePackagingConfigurationResponse->HlsPackage;
    my $Id          = $DescribePackagingConfigurationResponse->Id;
    my $MssPackage  = $DescribePackagingConfigurationResponse->MssPackage;
    my $PackagingGroupId =
      $DescribePackagingConfigurationResponse->PackagingGroupId;

# Returns a L<Paws::MediaPackageVod::DescribePackagingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/DescribePackagingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of a MediaPackage VOD PackagingConfiguration resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackagingConfiguration in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

