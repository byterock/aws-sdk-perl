
package Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposal;
  use Moose;
  has ProposalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'proposalId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDirectConnectGatewayAssociationProposal');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposal - Arguments for method DeleteDirectConnectGatewayAssociationProposal on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDirectConnectGatewayAssociationProposal on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DeleteDirectConnectGatewayAssociationProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDirectConnectGatewayAssociationProposal.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DeleteDirectConnectGatewayAssociationProposalResult =
      $directconnect->DeleteDirectConnectGatewayAssociationProposal(
      ProposalId => 'MyDirectConnectGatewayAssociationProposalId',

      );

    # Results:
    my $DirectConnectGatewayAssociationProposal =
      $DeleteDirectConnectGatewayAssociationProposalResult
      ->DirectConnectGatewayAssociationProposal;

# Returns a L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DeleteDirectConnectGatewayAssociationProposal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProposalId => Str

The ID of the proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDirectConnectGatewayAssociationProposal in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

