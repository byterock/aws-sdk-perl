package Paws::Textract::DocumentMetadata;
  use Moose;
  has Pages => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::DocumentMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::DocumentMetadata object:

  $service_obj->Method(Att1 => { Pages => $value, ..., Pages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::DocumentMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Pages

=head1 DESCRIPTION

Information about the input document.

=head1 ATTRIBUTES


=head2 Pages => Int

  The number of pages detected in the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

