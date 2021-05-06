
package Paws::EC2::CreateSnapshots;
  use Moose;
  has CopyTagsFromSource => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceSpecification => (is => 'ro', isa => 'Paws::EC2::InstanceSpecification', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSnapshots - Arguments for method CreateSnapshots on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshots on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshots.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateSnapshotsResult = $ec2->CreateSnapshots(
      InstanceSpecification => {
        ExcludeBootVolume => 1,                 # OPTIONAL
        InstanceId        => 'MyInstanceId',    # OPTIONAL
      },
      CopyTagsFromSource => 'volume',           # OPTIONAL
      Description        => 'MyString',         # OPTIONAL
      DryRun             => 1,                  # OPTIONAL
      TagSpecifications  => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, key-pair, launch-template, natgateway, network-acl, network-interface, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $Snapshots = $CreateSnapshotsResult->Snapshots;

    # Returns a L<Paws::EC2::CreateSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateSnapshots>

=head1 ATTRIBUTES


=head2 CopyTagsFromSource => Str

Copies the tags from the specified volume to corresponding snapshot.

Valid values are: C<"volume">

=head2 Description => Str

A description propagated to every snapshot specified by the instance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceSpecification => L<Paws::EC2::InstanceSpecification>

The instance to specify which volumes should be included in the
snapshots.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

Tags to apply to every snapshot specified by the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshots in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

