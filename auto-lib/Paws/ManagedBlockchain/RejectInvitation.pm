
package Paws::ManagedBlockchain::RejectInvitation;
  use Moose;
  has InvitationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'invitationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/{invitationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::RejectInvitationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::RejectInvitation - Arguments for method RejectInvitation on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectInvitation on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method RejectInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectInvitation.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $RejectInvitationOutput = $managedblockchain->RejectInvitation(
      InvitationId => 'MyResourceIdString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/RejectInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvitationId => Str

The unique identifier of the invitation to reject.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectInvitation in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

