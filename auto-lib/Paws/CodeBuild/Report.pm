package Paws::CodeBuild::Report;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has ExecutionId => (is => 'ro', isa => 'Str', request_name => 'executionId', traits => ['NameInRequest']);
  has Expired => (is => 'ro', isa => 'Str', request_name => 'expired', traits => ['NameInRequest']);
  has ExportConfig => (is => 'ro', isa => 'Paws::CodeBuild::ReportExportConfig', request_name => 'exportConfig', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ReportGroupArn => (is => 'ro', isa => 'Str', request_name => 'reportGroupArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TestSummary => (is => 'ro', isa => 'Paws::CodeBuild::TestReportSummary', request_name => 'testSummary', traits => ['NameInRequest']);
  has Truncated => (is => 'ro', isa => 'Bool', request_name => 'truncated', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Report

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Report object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Report object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about the results from running a series of test cases
during the run of a build project. The test cases are specified in the
buildspec for the build project using one or more paths to the test
case files. You can specify any type of tests you want, such as unit
tests, integration tests, and functional tests.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the report run.


=head2 Created => Str

  The date and time this report run occurred.


=head2 ExecutionId => Str

  The ARN of the build run that generated this report.


=head2 Expired => Str

  The date and time a report expires. A report expires 30 days after it
is created. An expired report is not available to view in CodeBuild.


=head2 ExportConfig => L<Paws::CodeBuild::ReportExportConfig>

  Information about where the raw data used to generate this report was
exported.


=head2 Name => Str

  The name of the report that was run.


=head2 ReportGroupArn => Str

  The ARN of the report group associated with this report.


=head2 Status => Str

  The status of this report.


=head2 TestSummary => L<Paws::CodeBuild::TestReportSummary>

  A C<TestReportSummary> object that contains information about this test
report.


=head2 Truncated => Bool

  A boolean that specifies if this report run is truncated. The list of
test cases is truncated after the maximum number of test cases is
reached.


=head2 Type => Str

  The type of the report that was run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

