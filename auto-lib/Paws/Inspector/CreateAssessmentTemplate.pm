
package Paws::Inspector::CreateAssessmentTemplate;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetArn' , required => 1);
  has AssessmentTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTemplateName' , required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationInSeconds' , required => 1);
  has RulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'rulesPackageArns' , required => 1);
  has UserAttributesForFindings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', traits => ['NameInRequest'], request_name => 'userAttributesForFindings' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssessmentTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::CreateAssessmentTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTemplate - Arguments for method CreateAssessmentTemplate on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessmentTemplate on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method CreateAssessmentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessmentTemplate.

As an example:

  $service_obj->CreateAssessmentTemplate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target for which you want to
create the assessment template.



=head2 B<REQUIRED> AssessmentTemplateName => Str

The user-defined name that identifies the assessment template that you
want to create. You can create several assessment templates for an
assessment target. The names of the assessment templates that
correspond to a particular assessment target must be unique.



=head2 B<REQUIRED> DurationInSeconds => Int

The duration of the assessment run in seconds. The default value is
3600 seconds (one hour).



=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

The ARNs that specify the rules packages that you want to attach to the
assessment template.



=head2 UserAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]

The user-defined attributes that are assigned to every finding that is
generated by the assessment run that uses this assessment template. An
attribute is a key and value pair (an Attribute object). Within an
assessment template, each key must be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessmentTemplate in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

