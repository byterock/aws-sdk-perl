
package Paws::WorkMail::GetAccessControlEffect;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessControlEffect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetAccessControlEffectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetAccessControlEffect - Arguments for method GetAccessControlEffect on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessControlEffect on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetAccessControlEffect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessControlEffect.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetAccessControlEffectResponse = $workmail->GetAccessControlEffect(
      Action         => 'MyAccessControlRuleAction',
      IpAddress      => 'MyIpAddress',
      OrganizationId => 'MyOrganizationId',
      UserId         => 'MyWorkMailIdentifier',

    );

    # Results:
    my $Effect       = $GetAccessControlEffectResponse->Effect;
    my $MatchedRules = $GetAccessControlEffectResponse->MatchedRules;

    # Returns a L<Paws::WorkMail::GetAccessControlEffectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetAccessControlEffect>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The access protocol action. Valid values include C<ActiveSync>,
C<AutoDiscover>, C<EWS>, C<IMAP>, C<SMTP>, C<WindowsOutlook>, and
C<WebMail>.



=head2 B<REQUIRED> IpAddress => Str

The IPv4 address.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization.



=head2 B<REQUIRED> UserId => Str

The user ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessControlEffect in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

