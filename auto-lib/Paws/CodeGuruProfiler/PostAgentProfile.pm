
package Paws::CodeGuruProfiler::PostAgentProfile;
  use Moose;
  has AgentProfile => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentProfile', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has ProfileToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'profileToken');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AgentProfile');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostAgentProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/agentProfile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::PostAgentProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::PostAgentProfile - Arguments for method PostAgentProfile on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostAgentProfile on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method PostAgentProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostAgentProfile.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $PostAgentProfileResponse = $codeguru -profiler->PostAgentProfile(
      AgentProfile       => 'BlobAgentProfile',
      ContentType        => 'MyString',
      ProfilingGroupName => 'MyProfilingGroupName',
      ProfileToken       => 'MyClientToken',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/PostAgentProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentProfile => Str





=head2 B<REQUIRED> ContentType => Str

The content type of the agent profile in the payload. Recommended to
send the profile gzipped with content-type application/octet-stream.
Other accepted values are application/x-amzn-ion and application/json
for unzipped Ion and JSON respectively.



=head2 ProfileToken => Str

Client generated token to deduplicate the agent profile during
aggregation.



=head2 B<REQUIRED> ProfilingGroupName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostAgentProfile in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

