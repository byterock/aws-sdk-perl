
package Paws::SESv2::GetEmailIdentityResponse;
  use Moose;
  has DkimAttributes => (is => 'ro', isa => 'Paws::SESv2::DkimAttributes');
  has FeedbackForwardingStatus => (is => 'ro', isa => 'Bool');
  has IdentityType => (is => 'ro', isa => 'Str');
  has MailFromAttributes => (is => 'ro', isa => 'Paws::SESv2::MailFromAttributes');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');
  has VerifiedForSendingStatus => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetEmailIdentityResponse

=head1 ATTRIBUTES


=head2 DkimAttributes => L<Paws::SESv2::DkimAttributes>

An object that contains information about the DKIM attributes for the
identity.


=head2 FeedbackForwardingStatus => Bool

The feedback forwarding configuration for the identity.

If the value is C<true>, you receive email notifications when bounce or
complaint events occur. These notifications are sent to the address
that you specified in the C<Return-Path> header of the original email.

You're required to have a method of tracking bounces and complaints. If
you haven't set up another mechanism for receiving bounce or complaint
notifications (for example, by setting up an event destination), you
receive an email notification when these events occur (even if this
setting is disabled).


=head2 IdentityType => Str

The email identity type.

Valid values are: C<"EMAIL_ADDRESS">, C<"DOMAIN">, C<"MANAGED_DOMAIN">
=head2 MailFromAttributes => L<Paws::SESv2::MailFromAttributes>

An object that contains information about the Mail-From attributes for
the email identity.


=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) that are
associated with the email identity.


=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. You can only send
email from verified email addresses or domains. For more information
about verifying identities, see the Amazon Pinpoint User Guide
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut

