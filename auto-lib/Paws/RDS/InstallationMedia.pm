
package Paws::RDS::InstallationMedia;
  use Moose;
  has CustomAvailabilityZoneId => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineInstallationMediaPath => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has FailureCause => (is => 'ro', isa => 'Paws::RDS::InstallationMediaFailureCause');
  has InstallationMediaId => (is => 'ro', isa => 'Str');
  has OSInstallationMediaPath => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::InstallationMedia

=head1 ATTRIBUTES


=head2 CustomAvailabilityZoneId => Str

The custom Availability Zone (AZ) that contains the installation media.


=head2 Engine => Str

The DB engine.


=head2 EngineInstallationMediaPath => Str

The path to the installation medium for the DB engine.


=head2 EngineVersion => Str

The engine version of the DB engine.


=head2 FailureCause => L<Paws::RDS::InstallationMediaFailureCause>

If an installation media failure occurred, the cause of the failure.


=head2 InstallationMediaId => Str

The installation medium ID.


=head2 OSInstallationMediaPath => Str

The path to the installation medium for the operating system associated
with the DB engine.


=head2 Status => Str

The status of the installation medium.


=head2 _request_id => Str


=cut

