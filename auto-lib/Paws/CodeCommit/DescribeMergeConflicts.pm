
package Paws::CodeCommit::DescribeMergeConflicts;
  use Moose;
  has ConflictDetailLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictDetailLevel' );
  has ConflictResolutionStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictResolutionStrategy' );
  has DestinationCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitSpecifier' , required => 1);
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has MaxMergeHunks => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxMergeHunks' );
  has MergeOption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeOption' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitSpecifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMergeConflicts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::DescribeMergeConflictsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribeMergeConflicts - Arguments for method DescribeMergeConflicts on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMergeConflicts on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method DescribeMergeConflicts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMergeConflicts.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $DescribeMergeConflictsOutput = $codecommit->DescribeMergeConflicts(
      DestinationCommitSpecifier => 'MyCommitName',
      FilePath                   => 'MyPath',
      MergeOption                => 'FAST_FORWARD_MERGE',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',
      ConflictDetailLevel        => 'FILE_LEVEL',           # OPTIONAL
      ConflictResolutionStrategy => 'NONE',                 # OPTIONAL
      MaxMergeHunks              => 1,                      # OPTIONAL
      NextToken                  => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $BaseCommitId     = $DescribeMergeConflictsOutput->BaseCommitId;
    my $ConflictMetadata = $DescribeMergeConflictsOutput->ConflictMetadata;
    my $DestinationCommitId =
      $DescribeMergeConflictsOutput->DestinationCommitId;
    my $MergeHunks     = $DescribeMergeConflictsOutput->MergeHunks;
    my $NextToken      = $DescribeMergeConflictsOutput->NextToken;
    my $SourceCommitId = $DescribeMergeConflictsOutput->SourceCommitId;

    # Returns a L<Paws::CodeCommit::DescribeMergeConflictsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/DescribeMergeConflicts>

=head1 ATTRIBUTES


=head2 ConflictDetailLevel => Str

The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.

Valid values are: C<"FILE_LEVEL">, C<"LINE_LEVEL">

=head2 ConflictResolutionStrategy => Str

Specifies which branch to use when resolving conflicts, or whether to
attempt automatically merging two versions of a file. The default is
NONE, which requires any conflicts to be resolved manually before the
merge operation is successful.

Valid values are: C<"NONE">, C<"ACCEPT_SOURCE">, C<"ACCEPT_DESTINATION">, C<"AUTOMERGE">

=head2 B<REQUIRED> DestinationCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit (for example, a branch name or a full commit ID).



=head2 B<REQUIRED> FilePath => Str

The path of the target files used to describe the conflicts.



=head2 MaxMergeHunks => Int

The maximum number of merge hunks to include in the output.



=head2 B<REQUIRED> MergeOption => Str

The merge option or strategy you want to use to merge the code.

Valid values are: C<"FAST_FORWARD_MERGE">, C<"SQUASH_MERGE">, C<"THREE_WAY_MERGE">

=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to get information about a
merge conflict.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit (for example, a branch name or a full commit ID).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMergeConflicts in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

