
package Paws::RDS::ModifyDBCluster;
  use Moose;
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::RDS::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBInstanceParameterGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableHttpEndpoint => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NewDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ScalingConfiguration');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBCluster - Arguments for method ModifyDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To change DB cluster settings
    # This example changes the specified settings for the specified DB cluster.
    my $ModifyDBClusterResult = $rds->ModifyDBCluster(
      'ApplyImmediately'           => 1,
      'DBClusterIdentifier'        => 'mydbcluster',
      'MasterUserPassword'         => 'mynewpassword',
      'NewDBClusterIdentifier'     => 'mynewdbcluster',
      'PreferredBackupWindow'      => '04:00-04:30',
      'PreferredMaintenanceWindow' => 'Tue:05:00-Tue:05:30'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBCluster>

=head1 ATTRIBUTES


=head2 AllowMajorVersionUpgrade => Bool

A value that indicates whether major version upgrades are allowed.

Constraints: You must allow major version upgrades when specifying a
value for the C<EngineVersion> parameter that is a different major
version than the DB cluster's current version.



=head2 ApplyImmediately => Bool

A value that indicates whether the modifications in this request and
any pending modifications are asynchronously applied as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the DB cluster. If this parameter is disabled, changes to the DB
cluster are applied during the next maintenance window.

The C<ApplyImmediately> parameter only affects the
C<EnableIAMDatabaseAuthentication>, C<MasterUserPassword>, and
C<NewDBClusterIdentifier> values. If the C<ApplyImmediately> parameter
is disabled, then changes to the C<EnableIAMDatabaseAuthentication>,
C<MasterUserPassword>, and C<NewDBClusterIdentifier> values are applied
during the next maintenance window. All other changes are applied
immediately, regardless of the value of the C<ApplyImmediately>
parameter.

By default, this parameter is disabled.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB cluster.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the DB cluster to
snapshots of the DB cluster. The default is not to copy them.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the cluster being modified. This
parameter isn't case-sensitive.

Constraints: This identifier must match the identifier of an existing
DB cluster.



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to use for the DB cluster.



=head2 DBInstanceParameterGroupName => Str

The name of the DB parameter group to apply to all instances of the DB
cluster.

When you apply a parameter group using the
C<DBInstanceParameterGroupName> parameter, the DB cluster isn't
rebooted automatically. Also, parameter changes aren't applied during
the next maintenance window but instead are applied immediately.

Default: The existing name setting

Constraints:

=over

=item *

The DB parameter group must be in the same DB parameter group family as
this DB cluster.

=item *

The C<DBInstanceParameterGroupName> parameter is only valid in
combination with the C<AllowMajorVersionUpgrade> parameter.

=back




=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 Domain => Str

The Active Directory directory ID to move the DB cluster to. Specify
C<none> to remove the cluster from its current domain. The domain must
be created prior to this operation.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableHttpEndpoint => Bool

A value that indicates whether to enable the HTTP endpoint for an
Aurora Serverless DB cluster. By default, the HTTP endpoint is
disabled.

When enabled, the HTTP endpoint provides a connectionless web service
API for running SQL queries on the Aurora Serverless DB cluster. You
can also query your database from inside the RDS console with the query
editor.

For more information, see Using the Data API for Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.

For more information, see IAM Database Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon Aurora User Guide.>



=head2 EngineVersion => Str

The version number of the database engine to which you want to upgrade.
Changing this parameter results in an outage. The change is applied
during the next maintenance window unless C<ApplyImmediately> is
enabled.

To list all of the available engine versions for C<aurora> (for MySQL
5.6-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-mysql> (for
MySQL 5.7-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-postgresql>,
use the following command:

C<aws rds describe-db-engine-versions --engine aurora-postgresql
--query "DBEngineVersions[].EngineVersion">



=head2 MasterUserPassword => Str

The new password for the master database user. This password can
contain any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



=head2 NewDBClusterIdentifier => Str

The new DB cluster identifier for the DB cluster when renaming a DB
cluster. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

The first character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>



=head2 OptionGroupName => Str

A value that indicates that the DB cluster should be associated with
the specified option group. Changing this parameter doesn't result in
an outage except in the following case, and the change is applied
during the next maintenance window unless the C<ApplyImmediately> is
enabled for this request. If the parameter change results in an option
group that enables OEM, this change can cause a brief (sub-second)
period during which new connections are rejected but existing
connections are not interrupted.

Permanent options can't be removed from an option group. The option
group can't be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred DB Cluster Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week. To see the time blocks available, see Adjusting the Preferred DB
Cluster Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

The scaling properties of the DB cluster. You can only modify scaling
properties for DB clusters in C<serverless> DB engine mode.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

