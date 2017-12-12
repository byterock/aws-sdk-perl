
package Paws::ServerlessRepo::ListApplicationVersions;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxItems');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::ListApplicationVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationVersions - Arguments for method ListApplicationVersions on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationVersions on the 
AWSServerlessApplicationRepository service. Use the attributes of this class
as arguments to method ListApplicationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationVersions.

As an example:

  $service_obj->ListApplicationVersions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The id of the application to list



=head2 MaxItems => Int

The total number of items to return



=head2 NextToken => Str

A token to specify where to start paginating




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationVersions in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
