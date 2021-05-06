
package Paws::Kafka::UpdateClusterConfiguration;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has ConfigurationInfo => (is => 'ro', isa => 'Paws::Kafka::ConfigurationInfo', traits => ['NameInRequest'], request_name => 'configurationInfo', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateClusterConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateClusterConfiguration - Arguments for method UpdateClusterConfiguration on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterConfiguration on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateClusterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterConfiguration.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateClusterConfigurationResponse = $kafka->UpdateClusterConfiguration(
      ClusterArn        => 'My__string',
      ConfigurationInfo => {
        Arn      => 'My__string',
        Revision => 1,

      },
      CurrentVersion => 'My__string',

    );

    # Results:
    my $ClusterArn = $UpdateClusterConfigurationResponse->ClusterArn;
    my $ClusterOperationArn =
      $UpdateClusterConfigurationResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateClusterConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateClusterConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>

Represents the configuration that you want MSK to use for the brokers
in a cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The version of the cluster that needs to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterConfiguration in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

