
package Paws::Forecast::DeleteForecast;
  use Moose;
  has ForecastArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DeleteForecast - Arguments for method DeleteForecast on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteForecast on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DeleteForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteForecast.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    $forecast->DeleteForecast(
      ForecastArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DeleteForecast>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteForecast in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

