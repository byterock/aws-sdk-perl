
package Paws::SESv2::PutEmailIdentityFeedbackAttributes;
  use Moose;
  has EmailForwardingEnabled => (is => 'ro', isa => 'Bool');
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEmailIdentityFeedbackAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/identities/{EmailIdentity}/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutEmailIdentityFeedbackAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutEmailIdentityFeedbackAttributes - Arguments for method PutEmailIdentityFeedbackAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailIdentityFeedbackAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutEmailIdentityFeedbackAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailIdentityFeedbackAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutEmailIdentityFeedbackAttributesResponse =
      $email->PutEmailIdentityFeedbackAttributes(
      EmailIdentity          => 'MyIdentity',
      EmailForwardingEnabled => 1,              # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutEmailIdentityFeedbackAttributes>

=head1 ATTRIBUTES


=head2 EmailForwardingEnabled => Bool

Sets the feedback forwarding configuration for the identity.

If the value is C<true>, you receive email notifications when bounce or
complaint events occur. These notifications are sent to the address
that you specified in the C<Return-Path> header of the original email.

You're required to have a method of tracking bounces and complaints. If
you haven't set up another mechanism for receiving bounce or complaint
notifications (for example, by setting up an event destination), you
receive an email notification when these events occur (even if this
setting is disabled).



=head2 B<REQUIRED> EmailIdentity => Str

The email identity that you want to configure bounce and complaint
feedback forwarding for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailIdentityFeedbackAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

