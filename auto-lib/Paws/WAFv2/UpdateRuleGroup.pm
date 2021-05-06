
package Paws::WAFv2::UpdateRuleGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::Rule]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFv2::VisibilityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::UpdateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::UpdateRuleGroup - Arguments for method UpdateRuleGroup on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleGroup on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method UpdateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleGroup.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $UpdateRuleGroupResponse = $wafv2->UpdateRuleGroup(
      Id               => 'MyEntityId',
      LockToken        => 'MyLockToken',
      Name             => 'MyEntityName',
      Scope            => 'CLOUDFRONT',
      VisibilityConfig => {
        CloudWatchMetricsEnabled => 1,
        MetricName               => 'MyMetricName',    # min: 1, max: 255
        SampledRequestsEnabled   => 1,

      },
      Description => 'MyEntityDescription',            # OPTIONAL
      Rules       => [
        {
          Name      => 'MyEntityName',                 # min: 1, max: 128
          Priority  => 1,
          Statement => {
            AndStatement => {
              Statements => [ <Statement>, ... ],

            },                                         # OPTIONAL
            ByteMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },                                     # OPTIONAL
                Body => {

                },                                     # OPTIONAL
                Method => {

                },                                     # OPTIONAL
                QueryString => {

                },                                     # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',        # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              PositionalConstraint => 'EXACTLY'
              , # values: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
              SearchString        => 'BlobSearchString',
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            GeoMatchStatement => {
              CountryCodes => [
                'AF',
                ... # values: AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
              ],    # min: 1; OPTIONAL
            },    # OPTIONAL
            IPSetReferenceStatement => {
              ARN => 'MyResourceArn',    # min: 20, max: 2048

            },    # OPTIONAL
            ManagedRuleGroupStatement => {
              Name          => 'MyEntityName',    # min: 1, max: 128
              VendorName    => 'MyVendorName',    # min: 1, max: 128
              ExcludedRules => [
                {
                  Name => 'MyEntityName',         # min: 1, max: 128

                },
                ...
              ],                                  # OPTIONAL
            },    # OPTIONAL
            NotStatement => {
              Statement => <Statement>,

            },    # OPTIONAL
            OrStatement => {
              Statements => [ <Statement>, ... ],

            },    # OPTIONAL
            RateBasedStatement => {
              AggregateKeyType   => 'IP',          # values: IP
              Limit              => 1,             # min: 100, max: 2000000000
              ScopeDownStatement => <Statement>,
            },    # OPTIONAL
            RegexPatternSetReferenceStatement => {
              ARN          => 'MyResourceArn',    # min: 20, max: 2048
              FieldToMatch => {
                AllQueryArguments => {

                },                                # OPTIONAL
                Body => {

                },                                # OPTIONAL
                Method => {

                },                                # OPTIONAL
                QueryString => {

                },                                # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            RuleGroupReferenceStatement => {
              ARN           => 'MyResourceArn',    # min: 20, max: 2048
              ExcludedRules => [
                {
                  Name => 'MyEntityName',          # min: 1, max: 128

                },
                ...
              ],                                   # OPTIONAL
            },    # OPTIONAL
            SizeConstraintStatement => {
              ComparisonOperator => 'EQ',    # values: EQ, NE, LE, LT, GE, GT
              FieldToMatch       => {
                AllQueryArguments => {

                },                           # OPTIONAL
                Body => {

                },                           # OPTIONAL
                Method => {

                },                           # OPTIONAL
                QueryString => {

                },                           # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              Size                => 1,    # max: 21474836480
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            SqliMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {

                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            XssMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {

                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
          },
          VisibilityConfig => {
            CloudWatchMetricsEnabled => 1,
            MetricName               => 'MyMetricName',    # min: 1, max: 255
            SampledRequestsEnabled   => 1,

          },
          Action => {
            Allow => {

            },                                             # OPTIONAL
            Block => {

            },                                             # OPTIONAL
            Count => {

            },                                             # OPTIONAL
          },    # OPTIONAL
          OverrideAction => {
            Count => {

            },    # OPTIONAL
            None => {

            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $NextLockToken = $UpdateRuleGroupResponse->NextLockToken;

    # Returns a L<Paws::WAFv2::UpdateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/UpdateRuleGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A friendly description of the rule group. You cannot change the
description of a rule group after you create it.



=head2 B<REQUIRED> Id => Str

A unique identifier for the rule group. This ID is returned in the
responses to create and list commands. You provide it to operations
like update and delete.



=head2 B<REQUIRED> LockToken => Str

A token used for optimistic locking. AWS WAF returns a token to your
get and list requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like update and delete. AWS WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another get, and use the new token returned by that operation.



=head2 B<REQUIRED> Name => Str

A friendly name of the rule group. You cannot change the name of a rule
group after you create it.



=head2 Rules => ArrayRef[L<Paws::WAFv2::Rule>]

The Rule statements used to identify the web requests that you want to
allow, block, or count. Each rule includes one top-level statement that
AWS WAF uses to identify matching web requests, and parameters that
govern how AWS WAF handles them.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB) or an API Gateway stage.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFv2::VisibilityConfig>

Defines and enables Amazon CloudWatch metrics and web request sample
collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleGroup in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

