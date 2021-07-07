
package Paws::Config::StartRemediationExecution;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRemediationExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::StartRemediationExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::StartRemediationExecution - Arguments for method StartRemediationExecution on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRemediationExecution on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method StartRemediationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRemediationExecution.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $StartRemediationExecutionResponse = $config->StartRemediationExecution(
      ConfigRuleName => 'MyConfigRuleName',
      ResourceKeys   => [
        {
          ResourceId   => 'MyResourceId',               # min: 1, max: 768
          ResourceType => 'AWS::EC2::CustomerGateway'
          , # values: AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBParameterGroup, AWS::RDS::DBOptionGroup, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterParameterGroup, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Alias, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::MobileHub::Project, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::LicenseManager::LicenseConfiguration, AWS::ApiGateway::DomainName, AWS::ApiGateway::Method, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::DomainName, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio

        },
        ...
      ],

    );

    # Results:
    my $FailedItems    = $StartRemediationExecutionResponse->FailedItems;
    my $FailureMessage = $StartRemediationExecutionResponse->FailureMessage;

    # Returns a L<Paws::Config::StartRemediationExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/StartRemediationExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The list of names of AWS Config rules that you want to run remediation
execution for.



=head2 B<REQUIRED> ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]

A list of resource keys to be processed with the current request. Each
element in the list consists of the resource type and resource ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRemediationExecution in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

