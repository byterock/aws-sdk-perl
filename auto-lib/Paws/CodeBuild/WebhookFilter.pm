package Paws::CodeBuild::WebhookFilter;
  use Moose;
  has ExcludeMatchedPattern => (is => 'ro', isa => 'Bool', request_name => 'excludeMatchedPattern', traits => ['NameInRequest']);
  has Pattern => (is => 'ro', isa => 'Str', request_name => 'pattern', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::WebhookFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::WebhookFilter object:

  $service_obj->Method(Att1 => { ExcludeMatchedPattern => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::WebhookFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludeMatchedPattern

=head1 DESCRIPTION

A filter used to determine which webhooks trigger a build.

=head1 ATTRIBUTES


=head2 ExcludeMatchedPattern => Bool

  Used to indicate that the C<pattern> determines which webhook events do
not trigger a build. If true, then a webhook event that does not match
the C<pattern> triggers a build. If false, then a webhook event that
matches the C<pattern> triggers a build.


=head2 B<REQUIRED> Pattern => Str

  For a C<WebHookFilter> that uses C<EVENT> type, a comma-separated
string that specifies one or more events. For example, the webhook
filter C<PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED> allows all
push, pull request created, and pull request updated events to trigger
a build.

For a C<WebHookFilter> that uses any of the other filter types, a
regular expression pattern. For example, a C<WebHookFilter> that uses
C<HEAD_REF> for its C<type> and the pattern C<^refs/heads/> triggers a
build when the head reference is a branch with a reference name
C<refs/heads/branch-name>.


=head2 B<REQUIRED> Type => Str

  The type of webhook filter. There are five webhook filter types:
C<EVENT>, C<ACTOR_ACCOUNT_ID>, C<HEAD_REF>, C<BASE_REF>, and
C<FILE_PATH>.

=over

=item EVENT

A webhook event triggers a build when the provided C<pattern> matches
one of four event types: C<PUSH>, C<PULL_REQUEST_CREATED>,
C<PULL_REQUEST_UPDATED>, and C<PULL_REQUEST_REOPENED>. The C<EVENT>
patterns are specified as a comma-separated string. For example,
C<PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED> filters all push,
pull request created, and pull request updated events.

The C<PULL_REQUEST_REOPENED> works with GitHub and GitHub Enterprise
only.

=item ACTOR_ACCOUNT_ID

A webhook event triggers a build when a GitHub, GitHub Enterprise, or
Bitbucket account ID matches the regular expression C<pattern>.

=item HEAD_REF

A webhook event triggers a build when the head reference matches the
regular expression C<pattern>. For example, C<refs/heads/branch-name>
and C<refs/tags/tag-name>.

Works with GitHub and GitHub Enterprise push, GitHub and GitHub
Enterprise pull request, Bitbucket push, and Bitbucket pull request
events.

=item BASE_REF

A webhook event triggers a build when the base reference matches the
regular expression C<pattern>. For example, C<refs/heads/branch-name>.

Works with pull request events only.

=item FILE_PATH

A webhook triggers a build when the path of a changed file matches the
regular expression C<pattern>.

Works with GitHub and GitHub Enterprise push events only.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

