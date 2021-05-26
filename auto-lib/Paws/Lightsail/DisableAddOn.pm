
package Paws::Lightsail::DisableAddOn;
  use Moose;
  has AddOnType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addOnType' , required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAddOn');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DisableAddOnResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DisableAddOn - Arguments for method DisableAddOn on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableAddOn on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DisableAddOn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableAddOn.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DisableAddOnResult = $lightsail->DisableAddOn(
      AddOnType    => 'AutoSnapshot',
      ResourceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $DisableAddOnResult->Operations;

    # Returns a L<Paws::Lightsail::DisableAddOnResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DisableAddOn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddOnType => Str

The add-on type to disable.

Valid values are: C<"AutoSnapshot">

=head2 B<REQUIRED> ResourceName => Str

The name of the source resource for which to disable the add-on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableAddOn in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

