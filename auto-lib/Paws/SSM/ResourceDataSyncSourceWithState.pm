package Paws::SSM::ResourceDataSyncSourceWithState;
  use Moose;
  has AwsOrganizationsSource => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncAwsOrganizationsSource');
  has IncludeFutureRegions => (is => 'ro', isa => 'Bool');
  has SourceRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceDataSyncSourceWithState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceDataSyncSourceWithState object:

  $service_obj->Method(Att1 => { AwsOrganizationsSource => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceDataSyncSourceWithState object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsOrganizationsSource

=head1 DESCRIPTION

The data type name for including resource data sync state. There are
four sync states:

C<OrganizationNotExists> (Your organization doesn't exist)

C<NoPermissions> (The system can't locate the service-linked role. This
role is automatically created when a user creates a resource data sync
in Explorer.)

C<InvalidOrganizationalUnit> (You specified or selected an invalid unit
in the resource data sync configuration.)

C<TrustedAccessDisabled> (You disabled Systems Manager access in the
organization in AWS Organizations.)

=head1 ATTRIBUTES


=head2 AwsOrganizationsSource => L<Paws::SSM::ResourceDataSyncAwsOrganizationsSource>

  The field name in C<SyncSource> for the
C<ResourceDataSyncAwsOrganizationsSource> type.


=head2 IncludeFutureRegions => Bool

  Whether to automatically synchronize and aggregate data from new AWS
Regions when those Regions come online.


=head2 SourceRegions => ArrayRef[Str|Undef]

  The C<SyncSource> AWS Regions included in the resource data sync.


=head2 SourceType => Str

  The type of data source for the resource data sync. C<SourceType> is
either C<AwsOrganizations> (if an organization is present in AWS
Organizations) or C<singleAccountMultiRegions>.


=head2 State => Str

  The data type name for including resource data sync state. There are
four sync states:

C<OrganizationNotExists>: Your organization doesn't exist.

C<NoPermissions>: The system can't locate the service-linked role. This
role is automatically created when a user creates a resource data sync
in Explorer.

C<InvalidOrganizationalUnit>: You specified or selected an invalid unit
in the resource data sync configuration.

C<TrustedAccessDisabled>: You disabled Systems Manager access in the
organization in AWS Organizations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
