# Generated by default/object.tt
package Paws::CodeBuild::Project;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', request_name => 'artifacts', traits => ['NameInRequest']);
  has Badge => (is => 'ro', isa => 'Paws::CodeBuild::ProjectBadge', request_name => 'badge', traits => ['NameInRequest']);
  has Cache => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', request_name => 'cache', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EncryptionKey => (is => 'ro', isa => 'Str', request_name => 'encryptionKey', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', request_name => 'environment', traits => ['NameInRequest']);
  has FileSystemLocations => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectFileSystemLocation]', request_name => 'fileSystemLocations', traits => ['NameInRequest']);
  has LastModified => (is => 'ro', isa => 'Str', request_name => 'lastModified', traits => ['NameInRequest']);
  has LogsConfig => (is => 'ro', isa => 'Paws::CodeBuild::LogsConfig', request_name => 'logsConfig', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'queuedTimeoutInMinutes', traits => ['NameInRequest']);
  has SecondaryArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectArtifacts]', request_name => 'secondaryArtifacts', traits => ['NameInRequest']);
  has SecondarySources => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', request_name => 'secondarySources', traits => ['NameInRequest']);
  has SecondarySourceVersions => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSourceVersion]', request_name => 'secondarySourceVersions', traits => ['NameInRequest']);
  has ServiceRole => (is => 'ro', isa => 'Str', request_name => 'serviceRole', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', request_name => 'source', traits => ['NameInRequest']);
  has SourceVersion => (is => 'ro', isa => 'Str', request_name => 'sourceVersion', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'timeoutInMinutes', traits => ['NameInRequest']);
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', request_name => 'vpcConfig', traits => ['NameInRequest']);
  has Webhook => (is => 'ro', isa => 'Paws::CodeBuild::Webhook', request_name => 'webhook', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Project

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Project object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Webhook => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Project object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build project.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the build project.


=head2 Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information about the build output artifacts for the build project.


=head2 Badge => L<Paws::CodeBuild::ProjectBadge>

Information about the build badge for the build project.


=head2 Cache => L<Paws::CodeBuild::ProjectCache>

Information about the cache for the build project.


=head2 Created => Str

When the build project was created, expressed in Unix time format.


=head2 Description => Str

A description that makes the build project easy to identify.


=head2 EncryptionKey => Str

The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).


=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information about the build environment for this build project.


=head2 FileSystemLocations => ArrayRef[L<Paws::CodeBuild::ProjectFileSystemLocation>]

An array of C<ProjectFileSystemLocation> objects for a CodeBuild build
project. A C<ProjectFileSystemLocation> object specifies the
C<identifier>, C<location>, C<mountOptions>, C<mountPoint>, and C<type>
of a file system created using Amazon Elastic File System.


=head2 LastModified => Str

When the build project's settings were last modified, expressed in Unix
time format.


=head2 LogsConfig => L<Paws::CodeBuild::LogsConfig>

Information about logs for the build project. A project can create logs
in Amazon CloudWatch Logs, an S3 bucket, or both.


=head2 Name => Str

The name of the build project.


=head2 QueuedTimeoutInMinutes => Int

The number of minutes a build is allowed to be queued before it times
out.


=head2 SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]

An array of C<ProjectArtifacts> objects.


=head2 SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

An array of C<ProjectSource> objects.


=head2 SecondarySourceVersions => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]

An array of C<ProjectSourceVersion> objects. If
C<secondarySourceVersions> is specified at the build level, then they
take over these C<secondarySourceVersions> (at the project level).


=head2 ServiceRole => Str

The ARN of the AWS Identity and Access Management (IAM) role that
enables AWS CodeBuild to interact with dependent AWS services on behalf
of the AWS account.


=head2 Source => L<Paws::CodeBuild::ProjectSource>

Information about the build input source code for this build project.


=head2 SourceVersion => Str

A version of the build input to be built for this project. If not
specified, the latest version is used. If specified, it must be one of:

=over

=item *

For AWS CodeCommit: the commit ID, branch, or Git tag to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID is used. If not specified,
the default branch's HEAD commit ID is used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object that represents the build input ZIP file to use.

=back

If C<sourceVersion> is specified at the build level, then that version
takes precedence over this C<sourceVersion> (at the project level).

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.


=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

The tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.


=head2 TimeoutInMinutes => Int

How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
wait before timing out any related build that did not get marked as
completed. The default is 60 minutes.


=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>

Information about the VPC configuration that AWS CodeBuild accesses.


=head2 Webhook => L<Paws::CodeBuild::Webhook>

Information about a webhook that connects repository events to a build
project in AWS CodeBuild.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

