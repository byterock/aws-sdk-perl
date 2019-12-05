package Paws::EKS::RemoteAccessConfig;
  use Moose;
  has Ec2SshKey => (is => 'ro', isa => 'Str', request_name => 'ec2SshKey', traits => ['NameInRequest']);
  has SourceSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourceSecurityGroups', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::RemoteAccessConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::RemoteAccessConfig object:

  $service_obj->Method(Att1 => { Ec2SshKey => $value, ..., SourceSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::RemoteAccessConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Ec2SshKey

=head1 DESCRIPTION

An object representing the remote access configuration for the managed
node group.

=head1 ATTRIBUTES


=head2 Ec2SshKey => Str

  The Amazon EC2 SSH key that provides access for SSH communication with
the worker nodes in the managed node group. For more information, see
Amazon EC2 Key Pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon Elastic Compute Cloud User Guide for Linux Instances>.


=head2 SourceSecurityGroups => ArrayRef[Str|Undef]

  The security groups to allow SSH access (port 22) from on the worker
nodes. If you specify an Amazon EC2 SSH key, but you do not specify a
source security group when you create a managed node group, port 22 on
the worker nodes is opened to the internet (0.0.0.0/0). For more
information, see Security Groups for Your VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
in the I<Amazon Virtual Private Cloud User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
