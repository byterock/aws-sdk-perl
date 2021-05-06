
package Paws::EKS::ListFargateProfiles;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFargateProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/fargate-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::ListFargateProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListFargateProfiles - Arguments for method ListFargateProfiles on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFargateProfiles on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method ListFargateProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFargateProfiles.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $ListFargateProfilesResponse = $eks->ListFargateProfiles(
      ClusterName => 'MyString',
      MaxResults  => 1,             # OPTIONAL
      NextToken   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $FargateProfileNames = $ListFargateProfilesResponse->FargateProfileNames;
    my $NextToken           = $ListFargateProfilesResponse->NextToken;

    # Returns a L<Paws::EKS::ListFargateProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/ListFargateProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster that you would like to listFargate
profiles in.



=head2 MaxResults => Int

The maximum number of Fargate profile results returned by
C<ListFargateProfiles> in paginated output. When you use this
parameter, C<ListFargateProfiles> returns only C<maxResults> results in
a single page along with a C<nextToken> response element. You can see
the remaining results of the initial request by sending another
C<ListFargateProfiles> request with the returned C<nextToken> value.
This value can be between 1 and 100. If you don't use this parameter,
C<ListFargateProfiles> returns up to 100 results and a C<nextToken>
value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListFargateProfiles> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFargateProfiles in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

