
package Paws::CodeCommit::GetApprovalRuleTemplateOutput;
  use Moose;
  has ApprovalRuleTemplate => (is => 'ro', isa => 'Paws::CodeCommit::ApprovalRuleTemplate', traits => ['NameInRequest'], request_name => 'approvalRuleTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetApprovalRuleTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplate => L<Paws::CodeCommit::ApprovalRuleTemplate>

The content and structure of the approval rule template.


=head2 _request_id => Str


=cut

1;