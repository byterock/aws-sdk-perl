
package Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroup;
  use Moose;
  has E164PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VoiceConnectorGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociatePhoneNumbersFromVoiceConnectorGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroup - Arguments for method DisassociatePhoneNumbersFromVoiceConnectorGroup on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociatePhoneNumbersFromVoiceConnectorGroup on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DisassociatePhoneNumbersFromVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociatePhoneNumbersFromVoiceConnectorGroup.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $DisassociatePhoneNumbersFromVoiceConnectorGroupResponse =
      $chime->DisassociatePhoneNumbersFromVoiceConnectorGroup(
      VoiceConnectorGroupId => 'MyNonEmptyString',
      E164PhoneNumbers      => [ 'MyE164PhoneNumber', ... ],    # OPTIONAL
      );

    # Results:
    my $PhoneNumberErrors =
      $DisassociatePhoneNumbersFromVoiceConnectorGroupResponse
      ->PhoneNumberErrors;

# Returns a L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DisassociatePhoneNumbersFromVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.



=head2 B<REQUIRED> VoiceConnectorGroupId => Str

The Amazon Chime Voice Connector group ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociatePhoneNumbersFromVoiceConnectorGroup in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

