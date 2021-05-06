
package Paws::IAM::GetGroupPolicyResponse;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', decode_as => 'URLJSON', method => 'Policy', traits => ['JSONAttribute',], required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetGroupPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The group the policy is associated with.


=head2 B<REQUIRED> PolicyDocument => Str

The policy document.

IAM stores policies in JSON format. However, resources that were
created using AWS CloudFormation templates can be formatted in YAML.
AWS CloudFormation always converts a YAML policy to JSON format before
submitting it to IAM.


=head2 B<REQUIRED> PolicyName => Str

The name of the policy.


=head2 _request_id => Str


=cut

