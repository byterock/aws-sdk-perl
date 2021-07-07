
package Paws::Comprehend::ClassifyDocumentResponse;
  use Moose;
  has Classes => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentClass]');
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentLabel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ClassifyDocumentResponse

=head1 ATTRIBUTES


=head2 Classes => ArrayRef[L<Paws::Comprehend::DocumentClass>]

The classes used by the document being analyzed. These are used for
multi-class trained models. Individual classes are mutually exclusive
and each document is expected to have only a single class assigned to
it. For example, an animal can be a dog or a cat, but not both at the
same time.


=head2 Labels => ArrayRef[L<Paws::Comprehend::DocumentLabel>]

The labels used the document being analyzed. These are used for
multi-label trained models. Individual labels represent different
categories that are related in some manner and are not multually
exclusive. For example, a movie can be just an action movie, or it can
be an action movie, a science fiction movie, and a comedy, all at the
same time.


=head2 _request_id => Str


=cut

1;