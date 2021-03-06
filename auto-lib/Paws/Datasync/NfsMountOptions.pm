package Paws::Datasync::NfsMountOptions;
  use Moose;
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::NfsMountOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::NfsMountOptions object:

  $service_obj->Method(Att1 => { Version => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::NfsMountOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Version

=head1 DESCRIPTION

Represents the mount options that are available for DataSync to access
an NFS location.

=head1 ATTRIBUTES


=head2 Version => Str

  The specific NFS version that you want DataSync to use to mount your
NFS share. If you don't specify a version, DataSync defaults to
C<AUTOMATIC>. That is, DataSync automatically selects a version based
on negotiation with the NFS server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

