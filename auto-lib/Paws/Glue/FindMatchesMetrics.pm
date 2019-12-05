package Paws::Glue::FindMatchesMetrics;
  use Moose;
  has AreaUnderPRCurve => (is => 'ro', isa => 'Num');
  has ConfusionMatrix => (is => 'ro', isa => 'Paws::Glue::ConfusionMatrix');
  has F1 => (is => 'ro', isa => 'Num');
  has Precision => (is => 'ro', isa => 'Num');
  has Recall => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::FindMatchesMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::FindMatchesMetrics object:

  $service_obj->Method(Att1 => { AreaUnderPRCurve => $value, ..., Recall => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::FindMatchesMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->AreaUnderPRCurve

=head1 DESCRIPTION

The evaluation metrics for the find matches algorithm. The quality of
your machine learning transform is measured by getting your transform
to predict some matches and comparing the results to known matches from
the same dataset. The quality metrics are based on a subset of your
data, so they are not precise.

=head1 ATTRIBUTES


=head2 AreaUnderPRCurve => Num

  The area under the precision/recall curve (AUPRC) is a single number
measuring the overall quality of the transform, that is independent of
the choice made for precision vs. recall. Higher values indicate that
you have a more attractive precision vs. recall tradeoff.

For more information, see Precision and recall
(https://en.wikipedia.org/wiki/Precision_and_recall) in Wikipedia.


=head2 ConfusionMatrix => L<Paws::Glue::ConfusionMatrix>

  The confusion matrix shows you what your transform is predicting
accurately and what types of errors it is making.

For more information, see Confusion matrix
(https://en.wikipedia.org/wiki/Confusion_matrix) in Wikipedia.


=head2 F1 => Num

  The maximum F1 metric indicates the transform's accuracy between 0 and
1, where 1 is the best accuracy.

For more information, see F1 score
(https://en.wikipedia.org/wiki/F1_score) in Wikipedia.


=head2 Precision => Num

  The precision metric indicates when often your transform is correct
when it predicts a match. Specifically, it measures how well the
transform finds true positives from the total true positives possible.

For more information, see Precision and recall
(https://en.wikipedia.org/wiki/Precision_and_recall) in Wikipedia.


=head2 Recall => Num

  The recall metric indicates that for an actual match, how often your
transform predicts the match. Specifically, it measures how well the
transform finds true positives from the total records in the source
data.

For more information, see Precision and recall
(https://en.wikipedia.org/wiki/Precision_and_recall) in Wikipedia.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
