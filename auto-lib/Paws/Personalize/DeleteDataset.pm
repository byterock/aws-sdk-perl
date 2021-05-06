
package Paws::Personalize::DeleteDataset;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DeleteDataset - Arguments for method DeleteDataset on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataset on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DeleteDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataset.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    $personalize->DeleteDataset(
      DatasetArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DeleteDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataset in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

