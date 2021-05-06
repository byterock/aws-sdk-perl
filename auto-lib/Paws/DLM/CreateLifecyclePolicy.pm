
package Paws::DLM::CreateLifecyclePolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDetails => (is => 'ro', isa => 'Paws::DLM::PolicyDetails', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DLM::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::CreateLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateLifecyclePolicy - Arguments for method CreateLifecyclePolicy on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLifecyclePolicy on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method CreateLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLifecyclePolicy.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $CreateLifecyclePolicyResponse = $dlm->CreateLifecyclePolicy(
      Description      => 'MyPolicyDescription',
      ExecutionRoleArn => 'MyExecutionRoleArn',
      PolicyDetails    => {
        Parameters => {
          ExcludeBootVolume => 1,    # OPTIONAL
        },    # OPTIONAL
        PolicyType =>
          'EBS_SNAPSHOT_MANAGEMENT', # values: EBS_SNAPSHOT_MANAGEMENT; OPTIONAL
        ResourceTypes => [
          'VOLUME', ...              # values: VOLUME, INSTANCE
        ],                           # min: 1, max: 1; OPTIONAL
        Schedules => [
          {
            CopyTags   => 1,         # OPTIONAL
            CreateRule => {
              Interval     => 1,          # min: 1; OPTIONAL
              IntervalUnit => 'HOURS',    # values: HOURS
              Times        => [
                'MyTime', ...             # min: 5, max: 5
              ],                          # max: 1; OPTIONAL
            },    # OPTIONAL
            CrossRegionCopyRules => [
              {
                Encrypted    => 1,
                TargetRegion => 'MyTargetRegion',    # max: 16
                CmkArn       => 'MyCmkArn',          # max: 2048; OPTIONAL
                CopyTags     => 1,                   # OPTIONAL
                RetainRule   => {
                  Interval => 1,                     # min: 1; OPTIONAL
                  IntervalUnit =>
                    'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # max: 3; OPTIONAL
            FastRestoreRule => {
              AvailabilityZones => [
                'MyAvailabilityZone', ...    # max: 16
              ],                             # min: 1, max: 10
              Count    => 1,                 # min: 1, max: 1000; OPTIONAL
              Interval => 1,                 # min: 1; OPTIONAL
              IntervalUnit =>
                'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
            },    # OPTIONAL
            Name       => 'MyScheduleName',    # max: 500; OPTIONAL
            RetainRule => {
              Count    => 1,                   # min: 1, max: 1000; OPTIONAL
              Interval => 1,                   # min: 1; OPTIONAL
              IntervalUnit =>
                'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
            },    # OPTIONAL
            TagsToAdd => [
              {
                Key   => 'MyString',    # max: 500
                Value => 'MyString',    # max: 500

              },
              ...
            ],                          # max: 45; OPTIONAL
            VariableTags => [
              {
                Key   => 'MyString',    # max: 500
                Value => 'MyString',    # max: 500

              },
              ...
            ],                          # max: 45; OPTIONAL
          },
          ...
        ],                              # min: 1, max: 1; OPTIONAL
        TargetTags => [
          {
            Key   => 'MyString',        # max: 500
            Value => 'MyString',        # max: 500

          },
          ...
        ],                              # min: 1, max: 50; OPTIONAL
      },
      State => 'ENABLED',
      Tags  => {
        'MyTagKey' => 'MyTagValue',     # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PolicyId = $CreateLifecyclePolicyResponse->PolicyId;

    # Returns a L<Paws::DLM::CreateLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/CreateLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$
are supported.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used to run the
operations specified by the lifecycle policy.



=head2 B<REQUIRED> PolicyDetails => L<Paws::DLM::PolicyDetails>

The configuration details of the lifecycle policy.



=head2 B<REQUIRED> State => Str

The desired activation state of the lifecycle policy after creation.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::DLM::TagMap>

The tags to apply to the lifecycle policy during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLifecyclePolicy in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

