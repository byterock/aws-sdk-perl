
package Paws::SSM::GetMaintenanceWindowResult;
  use Moose;
  has AllowUnassociatedTargets => (is => 'ro', isa => 'Bool');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Cutoff => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EndDate => (is => 'ro', isa => 'Str');
  has ModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NextExecutionTime => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has ScheduleTimezone => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 AllowUnassociatedTargets => Bool

Whether targets must be registered with the maintenance window before
tasks can be defined for those targets.


=head2 CreatedDate => Str

The date the maintenance window was created.


=head2 Cutoff => Int

The number of hours before the end of the maintenance window that
Systems Manager stops scheduling new tasks for execution.


=head2 Description => Str

The description of the maintenance window.


=head2 Duration => Int

The duration of the maintenance window in hours.


=head2 Enabled => Bool

Indicates whether the maintenance window is enabled.


=head2 EndDate => Str

The date and time, in ISO-8601 Extended format, for when the
maintenance window is scheduled to become inactive. The maintenance
window will not run after this specified time.


=head2 ModifiedDate => Str

The date the maintenance window was last modified.


=head2 Name => Str

The name of the maintenance window.


=head2 NextExecutionTime => Str

The next time the maintenance window will actually run, taking into
account any specified times for the maintenance window to become active
or inactive.


=head2 Schedule => Str

The schedule of the maintenance window in the form of a cron or rate
expression.


=head2 ScheduleTimezone => Str

The time zone that the scheduled maintenance window executions are
based on, in Internet Assigned Numbers Authority (IANA) format. For
example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more
information, see the Time Zone Database
(https://www.iana.org/time-zones) on the IANA website.


=head2 StartDate => Str

The date and time, in ISO-8601 Extended format, for when the
maintenance window is scheduled to become active. The maintenance
window will not run before this specified time.


=head2 WindowId => Str

The ID of the created maintenance window.


=head2 _request_id => Str


=cut

1;