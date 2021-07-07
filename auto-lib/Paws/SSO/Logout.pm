
package Paws::SSO::Logout;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sso_bearer_token', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Logout');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logout');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::Logout - Arguments for method Logout on L<Paws::SSO>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Logout on the
L<AWS Single Sign-On|Paws::SSO> service. Use the attributes of this class
as arguments to method Logout.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Logout.

=head1 SYNOPSIS

    my $portal.sso = Paws->service('SSO');
    $portal . sso->Logout(
      AccessToken => 'MyAccessTokenType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/portal.sso/Logout>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The token issued by the C<CreateToken> API call. For more information,
see CreateToken
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html)
in the I<AWS SSO OIDC API Reference Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Logout in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

