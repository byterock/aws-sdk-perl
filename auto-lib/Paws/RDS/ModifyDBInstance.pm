
package Paws::RDS::ModifyDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CertificateRotationRestart => (is => 'ro', isa => 'Bool');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::RDS::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBPortNumber => (is => 'ro', isa => 'Int');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBInstance - Arguments for method ModifyDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To change DB instance settings
    # This example immediately changes the specified settings for the specified
    # DB instance.
    my $ModifyDBInstanceResult = $rds->ModifyDBInstance(
      'AllocatedStorage'           => 10,
      'ApplyImmediately'           => 1,
      'BackupRetentionPeriod'      => 1,
      'DBInstanceClass'            => 'db.t2.small',
      'DBInstanceIdentifier'       => 'mymysqlinstance',
      'MasterUserPassword'         => 'mynewpassword',
      'PreferredBackupWindow'      => '04:00-04:30',
      'PreferredMaintenanceWindow' => 'Tue:05:00-Tue:05:30'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The new amount of storage (in gibibytes) to allocate for the DB
instance.

For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be
at least 10% greater than the current value. Values that are not at
least 10% greater than the existing value are rounded up so that they
are 10% greater than the current value.

For the valid values for allocated storage for each engine, see
C<CreateDBInstance>.



=head2 AllowMajorVersionUpgrade => Bool

A value that indicates whether major version upgrades are allowed.
Changing this parameter doesn't result in an outage and the change is
asynchronously applied as soon as possible.

Constraints: Major version upgrades must be allowed when specifying a
value for the EngineVersion parameter that is a different major version
than the DB instance's current version.



=head2 ApplyImmediately => Bool

A value that indicates whether the modifications in this request and
any pending modifications are asynchronously applied as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the DB instance. By default, this parameter is disabled.

If this parameter is disabled, changes to the DB instance are applied
during the next maintenance window. Some parameter changes can cause an
outage and are applied on the next call to RebootDBInstance, or the
next failure reboot. Review the table of parameters in Modifying a DB
Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
in the I<Amazon RDS User Guide.> to see the impact of enabling or
disabling C<ApplyImmediately> for each modified parameter and to
determine when the changes are applied.



=head2 AutoMinorVersionUpgrade => Bool

A value that indicates whether minor version upgrades are applied
automatically to the DB instance during the maintenance window.
Changing this parameter doesn't result in an outage except in the
following case and the change is asynchronously applied as soon as
possible. An outage results if this parameter is enabled during the
maintenance window, and a newer minor version is available, and RDS has
enabled auto patching for that engine version.



=head2 BackupRetentionPeriod => Int

The number of days to retain automated backups. Setting this parameter
to a positive number enables backups. Setting this parameter to 0
disables automated backups.

Changing this parameter can result in an outage if you change from 0 to
a non-zero value or from a non-zero value to 0. These changes are
applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request. If you
change the parameter from one non-zero value to another non-zero value,
the change is asynchronously applied as soon as possible.

B<Amazon Aurora>

Not applicable. The retention period for automated backups is managed
by the DB cluster. For more information, see C<ModifyDBCluster>.

Default: Uses existing setting

Constraints:

=over

=item *

Must be a value from 0 to 35

=item *

Can be specified for a MySQL Read Replica only if the source is running
MySQL 5.6 or later

=item *

Can be specified for a PostgreSQL Read Replica only if the source is
running PostgreSQL 9.3.5

=item *

Can't be set to 0 if the DB instance is a source to Read Replicas

=back




=head2 CACertificateIdentifier => Str

Indicates the certificate that needs to be associated with the
instance.



=head2 CertificateRotationRestart => Bool

A value that indicates whether the DB instance is restarted when you
rotate your SSL/TLS certificate.

By default, the DB instance is restarted when you rotate your SSL/TLS
certificate. The certificate is not updated until the DB instance is
restarted.

Set this parameter only if you are I<not> using SSL/TLS to connect to
the DB instance.

If you are using SSL/TLS to connect to the DB instance, follow the
appropriate instructions for your DB engine to rotate your SSL/TLS
certificate:

=over

=item *

For more information about rotating your SSL/TLS certificate for RDS DB
engines, see Rotating Your SSL/TLS Certificate.
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon RDS User Guide.>

=item *

For more information about rotating your SSL/TLS certificate for Aurora
DB engines, see Rotating Your SSL/TLS Certificate
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon Aurora User Guide.>

=back




=head2 CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB instance.

A change to the C<CloudwatchLogsExportConfiguration> parameter is
always applied to the DB instance immediately. Therefore, the
C<ApplyImmediately> parameter has no effect.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.

B<Amazon Aurora>

Not applicable. Copying tags to snapshots is managed by the DB cluster.
Setting this value for an Aurora DB instance has no effect on the DB
cluster setting. For more information, see C<ModifyDBCluster>.



=head2 DBInstanceClass => Str

The new compute and memory capacity of the DB instance, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see DB Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

If you modify the DB instance class, an outage occurs during the
change. The change is applied during the next maintenance window,
unless C<ApplyImmediately> is enabled for this request.

Default: Uses existing setting



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must match the identifier of an existing DBInstance.

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to apply to the DB instance.
Changing this setting doesn't result in an outage. The parameter group
name itself is changed immediately, but the actual parameter changes
are not applied until you reboot the instance without failover. In this
case, the DB instance isn't rebooted automatically and the parameter
changes isn't applied during the next maintenance window.

Default: Uses existing setting

Constraints: The DB parameter group must be in the same DB parameter
group family as this DB instance.



=head2 DBPortNumber => Int

The port number on which the database accepts connections.

The value of the C<DBPortNumber> parameter must not match any of the
port values specified for options in the option group for the DB
instance.

Your database will restart when you change the C<DBPortNumber> value
regardless of the value of the C<ApplyImmediately> parameter.

B<MySQL>

Default: C<3306>

Valid Values: C<1150-65535>

B<MariaDB>

Default: C<3306>

Valid Values: C<1150-65535>

B<PostgreSQL>

Default: C<5432>

Valid Values: C<1150-65535>

Type: Integer

B<Oracle>

Default: C<1521>

Valid Values: C<1150-65535>

B<SQL Server>

Default: C<1433>

Valid Values: C<1150-65535> except for C<1434>, C<3389>, C<47001>,
C<49152>, and C<49152> through C<49156>.

B<Amazon Aurora>

Default: C<3306>

Valid Values: C<1150-65535>



=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to authorize on this DB instance. Changing
this setting doesn't result in an outage and the change is
asynchronously applied as soon as possible.

Constraints:

=over

=item *

If supplied, must match existing DBSecurityGroups.

=back




=head2 DBSubnetGroupName => Str

The new DB subnet group for the DB instance. You can use this parameter
to move your DB instance to a different VPC. If your DB instance isn't
in a VPC, you can also use this parameter to move your DB instance into
a VPC. For more information, see Updating the VPC for a DB Instance
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC)
in the I<Amazon RDS User Guide.>

Changing the subnet group causes an outage during the change. The
change is applied during the next maintenance window, unless you enable
C<ApplyImmediately>.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetGroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB instance has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

The Active Directory directory ID to move the DB instance to. Specify
C<none> to remove the instance from its current domain. The domain must
be created prior to this operation. Currently, only Microsoft SQL
Server and Oracle DB instances can be created in an Active Directory
Domain.

For Microsoft SQL Server DB instances, Amazon RDS can use Windows
Authentication to authenticate users that connect to the DB instance.
For more information, see Using Windows Authentication with an Amazon
RDS DB Instance Running Microsoft SQL Server
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html)
in the I<Amazon RDS User Guide>.

For Oracle DB instances, Amazon RDS can use Kerberos Authentication to
authenticate users that connect to the DB instance. For more
information, see Using Kerberos Authentication with Amazon RDS for
Oracle
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html)
in the I<Amazon RDS User Guide>.



=head2 DomainIAMRoleName => Str

The name of the IAM role to use when making API calls to the Directory
Service.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled. For information about the supported DB engines,
see CreateDBInstance.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
DB instance.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon Relational Database Service User Guide>.



=head2 EngineVersion => Str

The version number of the database engine to upgrade to. Changing this
parameter results in an outage and the change is applied during the
next maintenance window unless the C<ApplyImmediately> parameter is
eanbled for this request.

For major version upgrades, if a nondefault DB parameter group is
currently in use, a new DB parameter group in the DB parameter group
family for the new engine version must be specified. The new DB
parameter group can be the default for that DB parameter group family.

For information about valid engine versions, see C<CreateDBInstance>,
or call C<DescribeDBEngineVersions>.



=head2 Iops => Int

The new Provisioned IOPS (I/O operations per second) value for the RDS
instance.

Changing this setting doesn't result in an outage and the change is
applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request. If you are
migrating from Provisioned IOPS to standard storage, set this value to
0. The DB instance will require a reboot for the change in storage type
to take effect.

If you choose to migrate your DB instance from using standard storage
to using Provisioned IOPS, or from using Provisioned IOPS to using
standard storage, the process can take time. The duration of the
migration depends on several factors such as database load, storage
size, storage type (standard or Provisioned IOPS), amount of IOPS
provisioned (if any), and the number of prior scale storage operations.
Typical migration times are under 24 hours, but the process can take up
to several days in some cases. During the migration, the DB instance is
available for use, but might experience performance degradation. While
the migration takes place, nightly backups for the instance are
suspended. No other Amazon RDS operations can take place for the
instance, including modifying the instance, rebooting the instance,
deleting the instance, creating a Read Replica for the instance, and
creating a DB snapshot of the instance.

Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value
supplied must be at least 10% greater than the current value. Values
that are not at least 10% greater than the existing value are rounded
up so that they are 10% greater than the current value.

Default: Uses existing setting



=head2 LicenseModel => Str

The license model for the DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MasterUserPassword => Str

The new password for the master user. The password can include any
printable ASCII character except "/", """, or "@".

Changing this parameter doesn't result in an outage and the change is
asynchronously applied as soon as possible. Between the time of the
request and the completion of the request, the C<MasterUserPassword>
element exists in the C<PendingModifiedValues> element of the operation
response.

B<Amazon Aurora>

Not applicable. The password for the master user is managed by the DB
cluster. For more information, see C<ModifyDBCluster>.

Default: Uses existing setting

B<MariaDB>

Constraints: Must contain from 8 to 41 characters.

B<Microsoft SQL Server>

Constraints: Must contain from 8 to 128 characters.

B<MySQL>

Constraints: Must contain from 8 to 41 characters.

B<Oracle>

Constraints: Must contain from 8 to 30 characters.

B<PostgreSQL>

Constraints: Must contain from 8 to 128 characters.

Amazon RDS API actions never return the password, so this action
provides a way to regain access to a primary instance user if the
password is lost. This includes restoring privileges that might have
been accidentally revoked.



=head2 MaxAllocatedStorage => Int

The upper limit to which Amazon RDS can automatically scale the storage
of the DB instance.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to To create an IAM role for Amazon RDS Enhanced
Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide.>

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

A value that indicates whether the DB instance is a Multi-AZ
deployment. Changing this parameter doesn't result in an outage and the
change is applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request.



=head2 NewDBInstanceIdentifier => Str

The new DB instance identifier for the DB instance when renaming a DB
instance. When you change the DB instance identifier, an instance
reboot occurs immediately if you enable C<ApplyImmediately>, or will
occur during the next maintenance window if you disable Apply
Immediately. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 OptionGroupName => Str

Indicates that the DB instance should be associated with the specified
option group. Changing this parameter doesn't result in an outage
except in the following case and the change is applied during the next
maintenance window unless the C<ApplyImmediately> parameter is enabled
for this request. If the parameter change results in an option group
that enables OEM, this change can cause a brief (sub-second) period
during which new connections are rejected but existing connections are
not interrupted.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier,
or the KMS key alias for the KMS encryption key.

If you do not specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default encryption key. AWS KMS creates the
default encryption key for your AWS account. Your AWS account has a
different default encryption key for each AWS Region.



=head2 PerformanceInsightsRetentionPeriod => Int

The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, as determined by the
C<BackupRetentionPeriod> parameter. Changing this parameter doesn't
result in an outage and the change is asynchronously applied as soon as
possible.

B<Amazon Aurora>

Not applicable. The daily time range for creating automated backups is
managed by the DB cluster. For more information, see
C<ModifyDBCluster>.

Constraints:

=over

=item *

Must be in the format hh24:mi-hh24:mi

=item *

Must be in Universal Time Coordinated (UTC)

=item *

Must not conflict with the preferred maintenance window

=item *

Must be at least 30 minutes

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which system maintenance can
occur, which might result in an outage. Changing this parameter doesn't
result in an outage, except in the following situation, and the change
is asynchronously applied as soon as possible. If there are pending
actions that cause a reboot, and the maintenance window is changed to
include the current time, then changing this parameter will cause a
reboot of the DB instance. If moving this window to the current time,
there must be at least 30 minutes between the current time and end of
the window to ensure pending changes are applied.

Default: Uses existing setting

Format: ddd:hh24:mi-ddd:hh24:mi

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PromotionTier => Int

A value that specifies the order in which an Aurora Replica is promoted
to the primary instance after a failure of the existing primary
instance. For more information, see Fault Tolerance for an Aurora DB
Cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance)
in the I<Amazon Aurora User Guide>.

Default: 1

Valid Values: 0 - 15



=head2 PubliclyAccessible => Bool

A value that indicates whether the DB instance is publicly accessible.
When the DB instance is publicly accessible, it is an Internet-facing
instance with a publicly resolvable DNS name, which resolves to a
public IP address. When the DB instance isn't publicly accessible, it
is an internal instance with a DNS name that resolves to a private IP
address.

C<PubliclyAccessible> only applies to DB instances in a VPC. The DB
instance must be part of a public subnet and C<PubliclyAccessible> must
be enabled for it to be publicly accessible.

Changes to the C<PubliclyAccessible> parameter are applied immediately
regardless of the value of the C<ApplyImmediately> parameter.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

If you specify Provisioned IOPS (C<io1>), you must also include a value
for the C<Iops> parameter.

If you choose to migrate your DB instance from using standard storage
to using Provisioned IOPS, or from using Provisioned IOPS to using
standard storage, the process can take time. The duration of the
migration depends on several factors such as database load, storage
size, storage type (standard or Provisioned IOPS), amount of IOPS
provisioned (if any), and the number of prior scale storage operations.
Typical migration times are under 24 hours, but the process can take up
to several days in some cases. During the migration, the DB instance is
available for use, but might experience performance degradation. While
the migration takes place, nightly backups for the instance are
suspended. No other Amazon RDS operations can take place for the
instance, including modifying the instance, rebooting the instance,
deleting the instance, creating a Read Replica for the instance, and
creating a DB snapshot of the instance.

Valid values: C<standard | gp2 | io1>

Default: C<io1> if the C<Iops> parameter is specified, otherwise C<gp2>



=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 UseDefaultProcessorFeatures => Bool

A value that indicates whether the DB instance class of the DB instance
uses its default processor features.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to authorize on this DB instance.
This change is asynchronously applied as soon as possible.

B<Amazon Aurora>

Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see
C<ModifyDBCluster>.

Constraints:

=over

=item *

If supplied, must match existing VpcSecurityGroupIds.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

