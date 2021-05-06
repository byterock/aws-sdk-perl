
package Paws::LexRuntime::DeleteSession;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::DeleteSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::DeleteSession - Arguments for method DeleteSession on L<Paws::LexRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSession on the
L<Amazon Lex Runtime Service|Paws::LexRuntime> service. Use the attributes of this class
as arguments to method DeleteSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSession.

=head1 SYNOPSIS

    my $runtime.lex = Paws->service('LexRuntime');
    my $DeleteSessionResponse = $runtime . lex->DeleteSession(
      BotAlias => 'MyBotAlias',
      BotName  => 'MyBotName',
      UserId   => 'MyUserId',

    );

    # Results:
    my $BotAlias  = $DeleteSessionResponse->BotAlias;
    my $BotName   = $DeleteSessionResponse->BotName;
    my $SessionId = $DeleteSessionResponse->SessionId;
    my $UserId    = $DeleteSessionResponse->UserId;

    # Returns a L<Paws::LexRuntime::DeleteSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex/DeleteSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

The alias in use for the bot that contains the session data.



=head2 B<REQUIRED> BotName => Str

The name of the bot that contains the session data.



=head2 B<REQUIRED> UserId => Str

The identifier of the user associated with the session data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSession in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

