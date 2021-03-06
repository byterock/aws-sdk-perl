package Paws::DynamoDB::AutoScalingSettingsUpdate;
  use Moose;
  has AutoScalingDisabled => (is => 'ro', isa => 'Bool');
  has AutoScalingRoleArn => (is => 'ro', isa => 'Str');
  has MaximumUnits => (is => 'ro', isa => 'Int');
  has MinimumUnits => (is => 'ro', isa => 'Int');
  has ScalingPolicyUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingPolicyUpdate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AutoScalingSettingsUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::AutoScalingSettingsUpdate object:

  $service_obj->Method(Att1 => { AutoScalingDisabled => $value, ..., ScalingPolicyUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::AutoScalingSettingsUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingDisabled

=head1 DESCRIPTION

Represents the autoscaling settings to be modified for a global table
or global secondary index.

=head1 ATTRIBUTES


=head2 AutoScalingDisabled => Bool

  Disabled autoscaling for this global table or global secondary index.


=head2 AutoScalingRoleArn => Str

  Role ARN used for configuring autoscaling policy.


=head2 MaximumUnits => Int

  The maximum capacity units that a global table or global secondary
index should be scaled up to.


=head2 MinimumUnits => Int

  The minimum capacity units that a global table or global secondary
index should be scaled down to.


=head2 ScalingPolicyUpdate => L<Paws::DynamoDB::AutoScalingPolicyUpdate>

  The scaling policy to apply for scaling target global table or global
secondary index capacity units.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

