
package Paws::AppMesh::UpdateMesh;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::MeshSpec', traits => ['NameInRequest'], request_name => 'spec');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMesh');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::UpdateMeshOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateMesh - Arguments for method UpdateMesh on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMesh on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method UpdateMesh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMesh.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $UpdateMeshOutput = $appmesh->UpdateMesh(
      MeshName    => 'MyResourceName',
      ClientToken => 'MyString',         # OPTIONAL
      Spec        => {
        EgressFilter => {
          Type => 'ALLOW_ALL',           # values: ALLOW_ALL, DROP_ALL

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Mesh = $UpdateMeshOutput->Mesh;

    # Returns a L<Paws::AppMesh::UpdateMeshOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/UpdateMesh>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to update.



=head2 Spec => L<Paws::AppMesh::MeshSpec>

The service mesh specification to apply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMesh in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

