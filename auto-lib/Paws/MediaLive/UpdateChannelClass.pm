
package Paws::MediaLive::UpdateChannelClass;
  use Moose;
  has ChannelClass => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelClass', required => 1);
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannelClass');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}/channelClass');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateChannelClassResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelClass - Arguments for method UpdateChannelClass on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannelClass on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateChannelClass.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannelClass.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateChannelClassResponse = $medialive->UpdateChannelClass(
      ChannelClass => 'STANDARD',
      ChannelId    => 'My__string',
      Destinations => [
        {
          Id                   => 'My__string',
          MediaPackageSettings => [
            {
              ChannelId => 'My__stringMin1',    # min: 1; OPTIONAL
            },
            ...
          ],                                    # OPTIONAL
          MultiplexSettings => {
            MultiplexId => 'My__stringMin1',    # min: 1; OPTIONAL
            ProgramName => 'My__stringMin1',    # min: 1; OPTIONAL
          },    # OPTIONAL
          Settings => [
            {
              PasswordParam => 'My__string',
              StreamName    => 'My__string',
              Url           => 'My__string',
              Username      => 'My__string',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $Channel = $UpdateChannelClassResponse->Channel;

    # Returns a L<Paws::MediaLive::UpdateChannelClassResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateChannelClass>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelClass => Str

The channel class that you wish to update this channel to use.

Valid values are: C<"STANDARD">, C<"SINGLE_PIPELINE">

=head2 B<REQUIRED> ChannelId => Str

Channel Id of the channel whose class should be updated.



=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

A list of output destinations for this channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannelClass in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

