
package Paws::SecurityHub::GetFindings;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::SecurityHub::AwsSecurityFindingFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortCriteria => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::SortCriterion]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindings - Arguments for method GetFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetFindingsResponse = $securityhub->GetFindings(
      Filters => {
        AwsAccountId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        CompanyName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ComplianceStatus => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        Confidence => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        CreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Criticality => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Description => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        FirstObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        GeneratorId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        Id => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        Keyword => [
          {
            Value => 'MyNonEmptyString',      # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        LastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        MalwareName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        MalwarePath => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        MalwareState => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        MalwareType => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkDestinationDomain => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkDestinationIpV4 => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkDestinationIpV6 => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkDestinationPort => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkDirection => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkProtocol => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkSourceDomain => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkSourceIpV4 => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkSourceIpV6 => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkSourceMac => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NetworkSourcePort => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NoteText => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        NoteUpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NoteUpdatedBy => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProcessLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProcessParentPid => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProcessPath => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProcessPid => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProcessTerminatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProductArn => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ProductFields => [
          {
            Comparison => 'EQUALS',              # values: EQUALS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ProductName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        RecommendationText => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        RecordState => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        RelatedFindingsId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        RelatedFindingsProductArn => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceIamInstanceProfileArn => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceImageId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceIpV4Addresses => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceIpV6Addresses => [
          {
            Cidr => 'MyNonEmptyString',       # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceKeyName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceSubnetId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceType => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsEc2InstanceVpcId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsIamAccessKeyCreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsIamAccessKeyStatus => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsIamAccessKeyUserName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsS3BucketOwnerId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceAwsS3BucketOwnerName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceContainerImageId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceContainerImageName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceContainerLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceContainerName => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceDetailsOther => [
          {
            Comparison => 'EQUALS',              # values: EQUALS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourcePartition => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceRegion => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ResourceTags => [
          {
            Comparison => 'EQUALS',              # values: EQUALS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        SeverityLabel => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        SeverityNormalized => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        SeverityProduct => [
          {
            Eq  => 1,                         # OPTIONAL
            Gte => 1,                         # OPTIONAL
            Lte => 1,                         # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        SourceUrl => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ThreatIntelIndicatorCategory => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ThreatIntelIndicatorLastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorSource => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ThreatIntelIndicatorSourceUrl => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ThreatIntelIndicatorType => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        ThreatIntelIndicatorValue => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        Title => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        Type => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        UpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',                # values: DAYS; OPTIONAL
              Value => 1,                     # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        UserDefinedFields => [
          {
            Comparison => 'EQUALS',              # values: EQUALS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        VerificationState => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
        WorkflowState => [
          {
            Comparison => 'EQUALS',           # values: EQUALS, PREFIX; OPTIONAL
            Value      => 'MyNonEmptyString', # OPTIONAL
          },
          ...
        ],                                    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      SortCriteria => [
        {
          Field     => 'MyNonEmptyString',    # OPTIONAL
          SortOrder => 'asc',                 # values: asc, desc; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $Findings  = $GetFindingsResponse->Findings;
    my $NextToken = $GetFindingsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::GetFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetFindings>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

The finding attributes used to define a condition to filter the
returned findings.



=head2 MaxResults => Int

The maximum number of findings to return.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<GetFindings> operation, set the value of this parameter to C<NULL>.

For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.



=head2 SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]

The finding attributes used to sort the list of returned findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

