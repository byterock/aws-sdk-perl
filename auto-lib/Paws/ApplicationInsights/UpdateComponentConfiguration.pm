
package Paws::ApplicationInsights::UpdateComponentConfiguration;
  use Moose;
  has ComponentConfiguration => (is => 'ro', isa => 'Str');
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has Monitor => (is => 'ro', isa => 'Bool');
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateComponentConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateComponentConfiguration - Arguments for method UpdateComponentConfiguration on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponentConfiguration on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateComponentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponentConfiguration.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateComponentConfigurationResponse =
      $applicationinsights->UpdateComponentConfiguration(
      ComponentName          => 'MyComponentName',
      ResourceGroupName      => 'MyResourceGroupName',
      ComponentConfiguration => 'MyComponentConfiguration',    # OPTIONAL
      Monitor                => 1,                             # OPTIONAL
      Tier                   => 'DEFAULT',                     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateComponentConfiguration>

=head1 ATTRIBUTES


=head2 ComponentConfiguration => Str

The configuration settings of the component. The value is the escaped
JSON of the configuration. For more information about the JSON format,
see Working with JSON
(https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html).
You can send a request to
C<DescribeComponentConfigurationRecommendation> to see the recommended
configuration for a component. For the complete format of the component
configuration file, see Component Configuration
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html).



=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 Monitor => Bool

Indicates whether the application component is monitored.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 Tier => Str

The tier of the application component. Supported tiers include
C<DOT_NET_WORKER>, C<DOT_NET_WEB>, C<DOT_NET_CORE>, C<SQL_SERVER>, and
C<DEFAULT>.

Valid values are: C<"DEFAULT">, C<"DOT_NET_CORE">, C<"DOT_NET_WORKER">, C<"DOT_NET_WEB">, C<"SQL_SERVER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponentConfiguration in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

