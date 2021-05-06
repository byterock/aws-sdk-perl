
package Paws::PinpointEmail::PutDeliverabilityDashboardOption;
  use Moose;
  has DashboardEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has SubscribedDomains => (is => 'ro', isa => 'ArrayRef[Paws::PinpointEmail::DomainDeliverabilityTrackingOption]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeliverabilityDashboardOption');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/deliverability-dashboard');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutDeliverabilityDashboardOptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutDeliverabilityDashboardOption - Arguments for method PutDeliverabilityDashboardOption on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeliverabilityDashboardOption on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutDeliverabilityDashboardOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeliverabilityDashboardOption.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutDeliverabilityDashboardOptionResponse =
      $email->PutDeliverabilityDashboardOption(
      DashboardEnabled  => 1,
      SubscribedDomains => [
        {
          Domain                       => 'MyDomain',    # OPTIONAL
          InboxPlacementTrackingOption => {
            Global      => 1,
            TrackedIsps => [ 'MyIspName', ... ],         # OPTIONAL
          },    # OPTIONAL
          SubscriptionStartDate => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],                                                     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutDeliverabilityDashboardOption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardEnabled => Bool

Specifies whether to enable the Deliverability dashboard for your
Amazon Pinpoint account. To enable the dashboard, set this value to
C<true>.



=head2 SubscribedDomains => ArrayRef[L<Paws::PinpointEmail::DomainDeliverabilityTrackingOption>]

An array of objects, one for each verified domain that you use to send
email and enabled the Deliverability dashboard for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeliverabilityDashboardOption in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

