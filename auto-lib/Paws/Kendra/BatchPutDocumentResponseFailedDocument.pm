package Paws::Kendra::BatchPutDocumentResponseFailedDocument;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchPutDocumentResponseFailedDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::BatchPutDocumentResponseFailedDocument object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::BatchPutDocumentResponseFailedDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Provides information about a document that could not be indexed.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The type of error that caused the document to fail to be indexed.


=head2 ErrorMessage => Str

  A description of the reason why the document could not be indexed.


=head2 Id => Str

  The unique identifier of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
