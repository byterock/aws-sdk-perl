
package Paws::Chime::GetVoiceConnectorGroup;
  use Moose;
  has VoiceConnectorGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVoiceConnectorGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connector-groups/{voiceConnectorGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::GetVoiceConnectorGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorGroup - Arguments for method GetVoiceConnectorGroup on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVoiceConnectorGroup on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method GetVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVoiceConnectorGroup.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $GetVoiceConnectorGroupResponse = $chime->GetVoiceConnectorGroup(
      VoiceConnectorGroupId => 'MyNonEmptyString',

    );

    # Results:
    my $VoiceConnectorGroup =
      $GetVoiceConnectorGroupResponse->VoiceConnectorGroup;

    # Returns a L<Paws::Chime::GetVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/GetVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceConnectorGroupId => Str

The Amazon Chime Voice Connector group ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVoiceConnectorGroup in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

