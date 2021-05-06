# Generated by default/object.tt
package Paws::Pinpoint::AndroidPushNotificationTemplate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has ImageIconUrl => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has RawContent => (is => 'ro', isa => 'Str');
  has SmallImageIconUrl => (is => 'ro', isa => 'Str');
  has Sound => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AndroidPushNotificationTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AndroidPushNotificationTemplate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AndroidPushNotificationTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies channel-specific content and settings for a message template
that can be used in push notifications that are sent through the ADM
(Amazon Device Messaging), Baidu (Baidu Cloud Push), or GCM (Firebase
Cloud Messaging, formerly Google Cloud Messaging) channel.

=head1 ATTRIBUTES


=head2 Action => Str

The action to occur if a recipient taps a push notification that's
based on the message template. Valid values are:

=over

=item *

OPEN_APP - Your app opens or it becomes the foreground app if it was
sent to the background. This is the default action.

=item *

DEEP_LINK - Your app opens and displays a designated user interface in
the app. This action uses the deep-linking features of the Android
platform.

=item *

URL - The default mobile browser on the recipient's device opens and
loads the web page at a URL that you specify.

=back



=head2 Body => Str

The message body to use in a push notification that's based on the
message template.


=head2 ImageIconUrl => Str

The URL of the large icon image to display in the content view of a
push notification that's based on the message template.


=head2 ImageUrl => Str

The URL of an image to display in a push notification that's based on
the message template.


=head2 RawContent => Str

The raw, JSON-formatted string to use as the payload for a push
notification that's based on the message template. If specified, this
value overrides all other content for the message template.


=head2 SmallImageIconUrl => Str

The URL of the small icon image to display in the status bar and the
content view of a push notification that's based on the message
template.


=head2 Sound => Str

The sound to play when a recipient receives a push notification that's
based on the message template. You can use the default stream or
specify the file name of a sound resource that's bundled in your app.
On an Android platform, the sound file must reside in /res/raw/.


=head2 Title => Str

The title to use in a push notification that's based on the message
template. This title appears above the notification message on a
recipient's device.


=head2 Url => Str

The URL to open in a recipient's default mobile browser, if a recipient
taps a a push notification that's based on the message template and the
value of the Action property is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

