
package Paws::Pinpoint::UpdateSegment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has SegmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment-id', required => 1);
  has WriteSegmentRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteSegmentRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteSegmentRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/segments/{segment-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateSegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateSegment - Arguments for method UpdateSegment on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSegment on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSegment.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateSegmentResponse = $pinpoint->UpdateSegment(
      ApplicationId       => 'My__string',
      SegmentId           => 'My__string',
      WriteSegmentRequest => {
        Dimensions => {
          Attributes => {
            'My__string' => {
              Values => [ 'My__string', ... ],
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },
          },    # OPTIONAL
          Behavior => {
            Recency => {
              Duration    => 'HR_24',     # values: HR_24, DAY_7, DAY_14, DAY_30
              RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE

            },    # OPTIONAL
          },    # OPTIONAL
          Demographic => {
            AppVersion => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Channel => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            DeviceType => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Make => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Model => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Platform => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Location => {
            Country => {
              Values => [ 'My__string', ... ],
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            GPSPoint => {
              Coordinates => {
                Latitude  => 1,
                Longitude => 1,

              },
              RangeInKilometers => 1,
            },    # OPTIONAL
          },    # OPTIONAL
          Metrics => {
            'My__string' => {
              ComparisonOperator => 'My__string',
              Value              => 1,

            },
          },    # OPTIONAL
          UserAttributes => {
            'My__string' => {
              Values => [ 'My__string', ... ],
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },
          },    # OPTIONAL
        },
        Name          => 'My__string',
        SegmentGroups => {
          Groups => [
            {
              Dimensions => [
                {
                  Attributes => {
                    'My__string' => {
                      Values => [ 'My__string', ... ],
                      AttributeType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },
                  },    # OPTIONAL
                  Behavior => {
                    Recency => {
                      Duration =>
                        'HR_24',    # values: HR_24, DAY_7, DAY_14, DAY_30
                      RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE

                    },    # OPTIONAL
                  },    # OPTIONAL
                  Demographic => {
                    AppVersion => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    Channel => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    DeviceType => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    Make => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    Model => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    Platform => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Location => {
                    Country => {
                      Values => [ 'My__string', ... ],
                      DimensionType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },    # OPTIONAL
                    GPSPoint => {
                      Coordinates => {
                        Latitude  => 1,
                        Longitude => 1,

                      },
                      RangeInKilometers => 1,
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Metrics => {
                    'My__string' => {
                      ComparisonOperator => 'My__string',
                      Value              => 1,

                    },
                  },    # OPTIONAL
                  UserAttributes => {
                    'My__string' => {
                      Values => [ 'My__string', ... ],
                      AttributeType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    },
                  },    # OPTIONAL
                },
                ...
              ],        # OPTIONAL
              SourceSegments => [
                {
                  Id      => 'My__string',
                  Version => 1,              # OPTIONAL
                },
                ...
              ],                             # OPTIONAL
              SourceType => 'ALL',           # values: ALL, ANY, NONE; OPTIONAL
              Type       => 'ALL',           # values: ALL, ANY, NONE; OPTIONAL
            },
            ...
          ],                                 # OPTIONAL
          Include => 'ALL',                  # values: ALL, ANY, NONE; OPTIONAL
        },    # OPTIONAL
        Tags => { 'My__string' => 'My__string', },    # OPTIONAL
      },

    );

    # Results:
    my $SegmentResponse = $UpdateSegmentResponse->SegmentResponse;

    # Returns a L<Paws::Pinpoint::UpdateSegmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateSegment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> SegmentId => Str

The unique identifier for the segment.



=head2 B<REQUIRED> WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSegment in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

