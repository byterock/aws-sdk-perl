# Generated by default/object.tt
package Paws::CloudFront::FieldLevelEncryptionProfileList;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::FieldLevelEncryptionProfileSummary]', request_name => 'FieldLevelEncryptionProfileSummary', traits => ['NameInRequest']);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionProfileList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionProfileList object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionProfileList object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

List of field-level encryption profiles.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFront::FieldLevelEncryptionProfileSummary>]

The field-level encryption profile items.


=head2 B<REQUIRED> MaxItems => Int

The maximum number of field-level encryption profiles you want in the
response body.


=head2 NextMarker => Str

If there are more elements to be listed, this element is present and
contains the value that you can use for the C<Marker> request parameter
to continue listing your profiles where you left off.


=head2 B<REQUIRED> Quantity => Int

The number of field-level encryption profiles.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

