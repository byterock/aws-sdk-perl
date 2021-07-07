
package Paws::Neptune::StartDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::StartDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::StartDBCluster - Arguments for method StartDBCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDBCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method StartDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $StartDBClusterResult = $rds->StartDBCluster(
      DBClusterIdentifier => 'MyString',

    );

    # Results:
    my $DBCluster = $StartDBClusterResult->DBCluster;

    # Returns a L<Paws::Neptune::StartDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier of the Neptune DB cluster to be started. This
parameter is stored as a lowercase string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDBCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

