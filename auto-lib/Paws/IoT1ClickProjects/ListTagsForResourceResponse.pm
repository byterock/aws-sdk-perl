
package Paws::IoT1ClickProjects::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::IoT1ClickProjects::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::IoT1ClickProjects::TagMap>

The tags (metadata key/value pairs) which you have assigned to the
resource.


=head2 _request_id => Str


=cut

