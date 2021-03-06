package Paws::Pinpoint::WriteCampaignRequest;
  use Moose;
  has AdditionalTreatments => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::WriteTreatmentResource]');
  has Description => (is => 'ro', isa => 'Str');
  has HoldoutPercent => (is => 'ro', isa => 'Int');
  has Hook => (is => 'ro', isa => 'Paws::Pinpoint::CampaignHook');
  has IsPaused => (is => 'ro', isa => 'Bool');
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::CampaignLimits');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::MessageConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::Schedule');
  has SegmentId => (is => 'ro', isa => 'Str');
  has SegmentVersion => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TreatmentDescription => (is => 'ro', isa => 'Str');
  has TreatmentName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteCampaignRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteCampaignRequest object:

  $service_obj->Method(Att1 => { AdditionalTreatments => $value, ..., TreatmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteCampaignRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalTreatments

=head1 DESCRIPTION

Specifies the configuration and other settings for a campaign.

=head1 ATTRIBUTES


=head2 AdditionalTreatments => ArrayRef[L<Paws::Pinpoint::WriteTreatmentResource>]

  An array of requests that defines additional treatments for the
campaign, in addition to the default treatment for the campaign.


=head2 Description => Str

  The custom description of the campaign.


=head2 HoldoutPercent => Int

  The allocated percentage of users (segment members) who shouldn't
receive messages from the campaign.


=head2 Hook => L<Paws::Pinpoint::CampaignHook>

  The settings for the AWS Lambda function to use as a code hook for the
campaign.


=head2 IsPaused => Bool

  Specifies whether to pause the campaign. A paused campaign doesn't run
unless you resume it by setting this value to false.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

  The messaging limits for the campaign.


=head2 MessageConfiguration => L<Paws::Pinpoint::MessageConfiguration>

  The message configuration settings for the campaign.


=head2 Name => Str

  The custom name of the campaign.


=head2 Schedule => L<Paws::Pinpoint::Schedule>

  The schedule settings for the campaign.


=head2 SegmentId => Str

  The unique identifier for the segment to associate with the campaign.


=head2 SegmentVersion => Int

  The version of the segment to associate with the campaign.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that defines the tags to
associate with the campaign. Each tag consists of a required tag key
and an associated tag value.


=head2 TreatmentDescription => Str

  The custom description of a variation of the campaign to use for A/B
testing.


=head2 TreatmentName => Str

  The custom name of a variation of the campaign to use for A/B testing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

