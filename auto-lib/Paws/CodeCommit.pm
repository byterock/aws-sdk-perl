package Paws::CodeCommit;
  use Moose;
  sub service { 'codecommit' }
  sub signing_name { 'codecommit' }
  sub version { '2015-04-13' }
  sub target_prefix { 'CodeCommit_20150413' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateApprovalRuleTemplateWithRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::AssociateApprovalRuleTemplateWithRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateApprovalRuleTemplateWithRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDescribeMergeConflicts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchDescribeMergeConflicts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateApprovalRuleTemplateFromRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCommits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchGetCommits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::BatchGetRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApprovalRuleTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateApprovalRuleTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreatePullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePullRequestApprovalRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreatePullRequestApprovalRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUnreferencedMergeCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::CreateUnreferencedMergeCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApprovalRuleTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteApprovalRuleTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCommentContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteCommentContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePullRequestApprovalRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeletePullRequestApprovalRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMergeConflicts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DescribeMergeConflicts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePullRequestEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DescribePullRequestEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApprovalRuleTemplateFromRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::DisassociateApprovalRuleTemplateFromRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluatePullRequestApprovalRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::EvaluatePullRequestApprovalRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApprovalRuleTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetApprovalRuleTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetBlob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommentsForComparedCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommentsForComparedCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommentsForPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommentsForPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDifferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetDifferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMergeCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetMergeCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMergeConflicts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetMergeConflicts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMergeOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetMergeOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPullRequestApprovalStates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetPullRequestApprovalStates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPullRequestOverrideState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetPullRequestOverrideState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::GetRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApprovalRuleTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListApprovalRuleTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedApprovalRuleTemplatesForRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBranches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListBranches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPullRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListPullRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositoriesForApprovalRuleTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeBranchesByFastForward {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergeBranchesByFastForward', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeBranchesBySquash {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergeBranchesBySquash', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeBranchesByThreeWay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergeBranchesByThreeWay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergePullRequestByFastForward {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergePullRequestByFastForward', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergePullRequestBySquash {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergePullRequestBySquash', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergePullRequestByThreeWay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::MergePullRequestByThreeWay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OverridePullRequestApprovalRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::OverridePullRequestApprovalRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentForComparedCommit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentForComparedCommit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentForPullRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentForPullRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostCommentReply {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PostCommentReply', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PutFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::PutRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestRepositoryTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::TestRepositoryTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApprovalRuleTemplateContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateApprovalRuleTemplateContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApprovalRuleTemplateDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateApprovalRuleTemplateDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApprovalRuleTemplateName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateApprovalRuleTemplateName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDefaultBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateDefaultBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestApprovalRuleContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestApprovalRuleContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestApprovalState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestApprovalState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePullRequestTitle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdatePullRequestTitle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepositoryDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateRepositoryDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepositoryName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCommit::UpdateRepositoryName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllPullRequestEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePullRequestEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribePullRequestEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->pullRequestEvents }, @{ $next_result->pullRequestEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pullRequestEvents') foreach (@{ $result->pullRequestEvents });
        $result = $self->DescribePullRequestEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pullRequestEvents') foreach (@{ $result->pullRequestEvents });
    }

    return undef
  }
  sub GetAllCommentsForComparedCommit {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCommentsForComparedCommit(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetCommentsForComparedCommit(@_, nextToken => $next_result->nextToken);
        push @{ $result->commentsForComparedCommitData }, @{ $next_result->commentsForComparedCommitData };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'commentsForComparedCommitData') foreach (@{ $result->commentsForComparedCommitData });
        $result = $self->GetCommentsForComparedCommit(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'commentsForComparedCommitData') foreach (@{ $result->commentsForComparedCommitData });
    }

    return undef
  }
  sub GetAllCommentsForPullRequest {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCommentsForPullRequest(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetCommentsForPullRequest(@_, nextToken => $next_result->nextToken);
        push @{ $result->commentsForPullRequestData }, @{ $next_result->commentsForPullRequestData };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'commentsForPullRequestData') foreach (@{ $result->commentsForPullRequestData });
        $result = $self->GetCommentsForPullRequest(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'commentsForPullRequestData') foreach (@{ $result->commentsForPullRequestData });
    }

    return undef
  }
  sub GetAllDifferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDifferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDifferences(@_, NextToken => $next_result->NextToken);
        push @{ $result->differences }, @{ $next_result->differences };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'differences') foreach (@{ $result->differences });
        $result = $self->GetDifferences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'differences') foreach (@{ $result->differences });
    }

    return undef
  }
  sub ListAllBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBranches(@_, nextToken => $next_result->nextToken);
        push @{ $result->branches }, @{ $next_result->branches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'branches') foreach (@{ $result->branches });
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'branches') foreach (@{ $result->branches });
    }

    return undef
  }
  sub ListAllPullRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPullRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPullRequests(@_, nextToken => $next_result->nextToken);
        push @{ $result->pullRequestIds }, @{ $next_result->pullRequestIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pullRequestIds') foreach (@{ $result->pullRequestIds });
        $result = $self->ListPullRequests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pullRequestIds') foreach (@{ $result->pullRequestIds });
    }

    return undef
  }
  sub ListAllRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }


  sub operations { qw/AssociateApprovalRuleTemplateWithRepository BatchAssociateApprovalRuleTemplateWithRepositories BatchDescribeMergeConflicts BatchDisassociateApprovalRuleTemplateFromRepositories BatchGetCommits BatchGetRepositories CreateApprovalRuleTemplate CreateBranch CreateCommit CreatePullRequest CreatePullRequestApprovalRule CreateRepository CreateUnreferencedMergeCommit DeleteApprovalRuleTemplate DeleteBranch DeleteCommentContent DeleteFile DeletePullRequestApprovalRule DeleteRepository DescribeMergeConflicts DescribePullRequestEvents DisassociateApprovalRuleTemplateFromRepository EvaluatePullRequestApprovalRules GetApprovalRuleTemplate GetBlob GetBranch GetComment GetCommentsForComparedCommit GetCommentsForPullRequest GetCommit GetDifferences GetFile GetFolder GetMergeCommit GetMergeConflicts GetMergeOptions GetPullRequest GetPullRequestApprovalStates GetPullRequestOverrideState GetRepository GetRepositoryTriggers ListApprovalRuleTemplates ListAssociatedApprovalRuleTemplatesForRepository ListBranches ListPullRequests ListRepositories ListRepositoriesForApprovalRuleTemplate ListTagsForResource MergeBranchesByFastForward MergeBranchesBySquash MergeBranchesByThreeWay MergePullRequestByFastForward MergePullRequestBySquash MergePullRequestByThreeWay OverridePullRequestApprovalRules PostCommentForComparedCommit PostCommentForPullRequest PostCommentReply PutFile PutRepositoryTriggers TagResource TestRepositoryTriggers UntagResource UpdateApprovalRuleTemplateContent UpdateApprovalRuleTemplateDescription UpdateApprovalRuleTemplateName UpdateComment UpdateDefaultBranch UpdatePullRequestApprovalRuleContent UpdatePullRequestApprovalState UpdatePullRequestDescription UpdatePullRequestStatus UpdatePullRequestTitle UpdateRepositoryDescription UpdateRepositoryName / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit - Perl Interface to AWS AWS CodeCommit

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeCommit');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS CodeCommit

This is the I<AWS CodeCommit API Reference>. This reference provides
descriptions of the operations and data types for AWS CodeCommit API
along with usage examples.

You can use the AWS CodeCommit API to work with the following objects:

Repositories, by calling the following:

=over

=item *

BatchGetRepositories, which returns information about one or more
repositories associated with your AWS account.

=item *

CreateRepository, which creates an AWS CodeCommit repository.

=item *

DeleteRepository, which deletes an AWS CodeCommit repository.

=item *

GetRepository, which returns information about a specified repository.

=item *

ListRepositories, which lists all AWS CodeCommit repositories
associated with your AWS account.

=item *

UpdateRepositoryDescription, which sets or updates the description of
the repository.

=item *

UpdateRepositoryName, which changes the name of the repository. If you
change the name of a repository, no other users of that repository can
access it until you send them the new HTTPS or SSH URL to use.

=back

Branches, by calling the following:

=over

=item *

CreateBranch, which creates a branch in a specified repository.

=item *

DeleteBranch, which deletes the specified branch in a repository unless
it is the default branch.

=item *

GetBranch, which returns information about a specified branch.

=item *

ListBranches, which lists all branches for a specified repository.

=item *

UpdateDefaultBranch, which changes the default branch for a repository.

=back

Files, by calling the following:

=over

=item *

DeleteFile, which deletes the content of a specified file from a
specified branch.

=item *

GetBlob, which returns the base-64 encoded content of an individual Git
blob object in a repository.

=item *

GetFile, which returns the base-64 encoded content of a specified file.

=item *

GetFolder, which returns the contents of a specified folder or
directory.

=item *

PutFile, which adds or modifies a single file in a specified repository
and branch.

=back

Commits, by calling the following:

=over

=item *

BatchGetCommits, which returns information about one or more commits in
a repository.

=item *

CreateCommit, which creates a commit for changes to a repository.

=item *

GetCommit, which returns information about a commit, including commit
messages and author and committer information.

=item *

GetDifferences, which returns information about the differences in a
valid commit specifier (such as a branch, tag, HEAD, commit ID, or
other fully qualified reference).

=back

Merges, by calling the following:

=over

=item *

BatchDescribeMergeConflicts, which returns information about conflicts
in a merge between commits in a repository.

=item *

CreateUnreferencedMergeCommit, which creates an unreferenced commit
between two branches or commits for the purpose of comparing them and
identifying any potential conflicts.

=item *

DescribeMergeConflicts, which returns information about merge conflicts
between the base, source, and destination versions of a file in a
potential merge.

=item *

GetMergeCommit, which returns information about the merge between a
source and destination commit.

=item *

GetMergeConflicts, which returns information about merge conflicts
between the source and destination branch in a pull request.

=item *

GetMergeOptions, which returns information about the available merge
options between two branches or commit specifiers.

=item *

MergeBranchesByFastForward, which merges two branches using the
fast-forward merge option.

=item *

MergeBranchesBySquash, which merges two branches using the squash merge
option.

=item *

MergeBranchesByThreeWay, which merges two branches using the three-way
merge option.

=back

Pull requests, by calling the following:

=over

=item *

CreatePullRequest, which creates a pull request in a specified
repository.

=item *

CreatePullRequestApprovalRule, which creates an approval rule for a
specified pull request.

=item *

DeletePullRequestApprovalRule, which deletes an approval rule for a
specified pull request.

=item *

DescribePullRequestEvents, which returns information about one or more
pull request events.

=item *

EvaluatePullRequestApprovalRules, which evaluates whether a pull
request has met all the conditions specified in its associated approval
rules.

=item *

GetCommentsForPullRequest, which returns information about comments on
a specified pull request.

=item *

GetPullRequest, which returns information about a specified pull
request.

=item *

GetPullRequestApprovalStates, which returns information about the
approval states for a specified pull request.

=item *

GetPullRequestOverrideState, which returns information about whether
approval rules have been set aside (overriden) for a pull request, and
if so, the Amazon Resource Name (ARN) of the user or identity that
overrode the rules and their requirements for the pull request.

=item *

ListPullRequests, which lists all pull requests for a repository.

=item *

MergePullRequestByFastForward, which merges the source destination
branch of a pull request into the specified destination branch for that
pull request using the fast-forward merge option.

=item *

MergePullRequestBySquash, which merges the source destination branch of
a pull request into the specified destination branch for that pull
request using the squash merge option.

=item *

MergePullRequestByThreeWay. which merges the source destination branch
of a pull request into the specified destination branch for that pull
request using the three-way merge option.

=item *

OverridePullRequestApprovalRules, which sets aside all approval rule
requirements for a pull request.

=item *

PostCommentForPullRequest, which posts a comment to a pull request at
the specified line, file, or request.

=item *

UpdatePullRequestApprovalRuleContent, which updates the structure of an
approval rule for a pull request.

=item *

UpdatePullRequestApprovalState, which updates the state of an approval
on a pull request.

=item *

UpdatePullRequestDescription, which updates the description of a pull
request.

=item *

UpdatePullRequestStatus, which updates the status of a pull request.

=item *

UpdatePullRequestTitle, which updates the title of a pull request.

=back

Approval rule templates, by calling the following:

=over

=item *

AssociateApprovalRuleTemplateWithRepository, which associates a
template with a specified repository. After the template is associated
with a repository, AWS CodeCommit creates approval rules that match the
template conditions on every pull request created in the specified
repository.

=item *

BatchAssociateApprovalRuleTemplateWithRepositories, which associates a
template with one or more specified repositories. After the template is
associated with a repository, AWS CodeCommit creates approval rules
that match the template conditions on every pull request created in the
specified repositories.

=item *

BatchDisassociateApprovalRuleTemplateFromRepositories, which removes
the association between a template and specified repositories so that
approval rules based on the template are not automatically created when
pull requests are created in those repositories.

=item *

CreateApprovalRuleTemplate, which creates a template for approval rules
that can then be associated with one or more repositories in your AWS
account.

=item *

DeleteApprovalRuleTemplate, which deletes the specified template. It
does not remove approval rules on pull requests already created with
the template.

=item *

DisassociateApprovalRuleTemplateFromRepository, which removes the
association between a template and a repository so that approval rules
based on the template are not automatically created when pull requests
are created in the specified repository.

=item *

GetApprovalRuleTemplate, which returns information about an approval
rule template.

=item *

ListApprovalRuleTemplates, which lists all approval rule templates in
the AWS Region in your AWS account.

=item *

ListAssociatedApprovalRuleTemplatesForRepository, which lists all
approval rule templates that are associated with a specified
repository.

=item *

ListRepositoriesForApprovalRuleTemplate, which lists all repositories
associated with the specified approval rule template.

=item *

UpdateApprovalRuleTemplateDescription, which updates the description of
an approval rule template.

=item *

UpdateApprovalRuleTemplateName, which updates the name of an approval
rule template.

=item *

UpdateApprovalRuleTemplateContent, which updates the content of an
approval rule template.

=back

Comments in a repository, by calling the following:

=over

=item *

DeleteCommentContent, which deletes the content of a comment on a
commit in a repository.

=item *

GetComment, which returns information about a comment on a commit.

=item *

GetCommentsForComparedCommit, which returns information about comments
on the comparison between two commit specifiers in a repository.

=item *

PostCommentForComparedCommit, which creates a comment on the comparison
between two commit specifiers in a repository.

=item *

PostCommentReply, which creates a reply to a comment.

=item *

UpdateComment, which updates the content of a comment on a commit in a
repository.

=back

Tags used to tag resources in AWS CodeCommit (not Git tags), by calling
the following:

=over

=item *

ListTagsForResource, which gets information about AWS tags for a
specified Amazon Resource Name (ARN) in AWS CodeCommit.

=item *

TagResource, which adds or updates tags for a resource in AWS
CodeCommit.

=item *

UntagResource, which removes tags for a resource in AWS CodeCommit.

=back

Triggers, by calling the following:

=over

=item *

GetRepositoryTriggers, which returns information about triggers
configured for a repository.

=item *

PutRepositoryTriggers, which replaces all triggers for a repository and
can be used to create or delete triggers.

=item *

TestRepositoryTriggers, which tests the functionality of a repository
trigger by sending data to the trigger target.

=back

For information about how to use AWS CodeCommit, see the AWS CodeCommit
User Guide
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13>


=head1 METHODS

=head2 AssociateApprovalRuleTemplateWithRepository

=over

=item ApprovalRuleTemplateName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::AssociateApprovalRuleTemplateWithRepository>

Returns: nothing

Creates an association between an approval rule template and a
specified repository. Then, the next time a pull request is created in
the repository where the destination reference (if specified) matches
the destination reference (branch) for the pull request, an approval
rule that matches the template conditions is automatically created for
that pull request. If no destination references are specified in the
template, an approval rule that matches the template contents is
created for all pull requests in that repository.


=head2 BatchAssociateApprovalRuleTemplateWithRepositories

=over

=item ApprovalRuleTemplateName => Str

=item RepositoryNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositories>

Returns: a L<Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput> instance

Creates an association between an approval rule template and one or
more specified repositories.


=head2 BatchDescribeMergeConflicts

=over

=item DestinationCommitSpecifier => Str

=item MergeOption => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [ConflictDetailLevel => Str]

=item [ConflictResolutionStrategy => Str]

=item [FilePaths => ArrayRef[Str|Undef]]

=item [MaxConflictFiles => Int]

=item [MaxMergeHunks => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchDescribeMergeConflicts>

Returns: a L<Paws::CodeCommit::BatchDescribeMergeConflictsOutput> instance

Returns information about one or more merge conflicts in the attempted
merge of two commit specifiers using the squash or three-way merge
strategy.


=head2 BatchDisassociateApprovalRuleTemplateFromRepositories

=over

=item ApprovalRuleTemplateName => Str

=item RepositoryNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositories>

Returns: a L<Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput> instance

Removes the association between an approval rule template and one or
more specified repositories.


=head2 BatchGetCommits

=over

=item CommitIds => ArrayRef[Str|Undef]

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchGetCommits>

Returns: a L<Paws::CodeCommit::BatchGetCommitsOutput> instance

Returns information about the contents of one or more commits in a
repository.


=head2 BatchGetRepositories

=over

=item RepositoryNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeCommit::BatchGetRepositories>

Returns: a L<Paws::CodeCommit::BatchGetRepositoriesOutput> instance

Returns information about one or more repositories.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository
description on a webpage.


=head2 CreateApprovalRuleTemplate

=over

=item ApprovalRuleTemplateContent => Str

=item ApprovalRuleTemplateName => Str

=item [ApprovalRuleTemplateDescription => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateApprovalRuleTemplate>

Returns: a L<Paws::CodeCommit::CreateApprovalRuleTemplateOutput> instance

Creates a template for approval rules that can then be associated with
one or more repositories in your AWS account. When you associate a
template with a repository, AWS CodeCommit creates an approval rule
that matches the conditions of the template for all pull requests that
meet the conditions of the template. For more information, see
AssociateApprovalRuleTemplateWithRepository.


=head2 CreateBranch

=over

=item BranchName => Str

=item CommitId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateBranch>

Returns: nothing

Creates a branch in a repository and points the branch to a commit.

Calling the create branch operation does not set a repository's default
branch. To do this, call the update default branch operation.


=head2 CreateCommit

=over

=item BranchName => Str

=item RepositoryName => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [DeleteFiles => ArrayRef[L<Paws::CodeCommit::DeleteFileEntry>]]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [ParentCommitId => Str]

=item [PutFiles => ArrayRef[L<Paws::CodeCommit::PutFileEntry>]]

=item [SetFileModes => ArrayRef[L<Paws::CodeCommit::SetFileModeEntry>]]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateCommit>

Returns: a L<Paws::CodeCommit::CreateCommitOutput> instance

Creates a commit for a repository on the tip of a specified branch.


=head2 CreatePullRequest

=over

=item Targets => ArrayRef[L<Paws::CodeCommit::Target>]

=item Title => Str

=item [ClientRequestToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreatePullRequest>

Returns: a L<Paws::CodeCommit::CreatePullRequestOutput> instance

Creates a pull request in the specified repository.


=head2 CreatePullRequestApprovalRule

=over

=item ApprovalRuleContent => Str

=item ApprovalRuleName => Str

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreatePullRequestApprovalRule>

Returns: a L<Paws::CodeCommit::CreatePullRequestApprovalRuleOutput> instance

Creates an approval rule for a pull request.


=head2 CreateRepository

=over

=item RepositoryName => Str

=item [RepositoryDescription => Str]

=item [Tags => L<Paws::CodeCommit::TagsMap>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateRepository>

Returns: a L<Paws::CodeCommit::CreateRepositoryOutput> instance

Creates a new, empty repository.


=head2 CreateUnreferencedMergeCommit

=over

=item DestinationCommitSpecifier => Str

=item MergeOption => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [ConflictDetailLevel => Str]

=item [ConflictResolution => L<Paws::CodeCommit::ConflictResolution>]

=item [ConflictResolutionStrategy => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]


=back

Each argument is described in detail in: L<Paws::CodeCommit::CreateUnreferencedMergeCommit>

Returns: a L<Paws::CodeCommit::CreateUnreferencedMergeCommitOutput> instance

Creates an unreferenced commit that represents the result of merging
two branches using a specified merge strategy. This can help you
determine the outcome of a potential merge. This API cannot be used
with the fast-forward merge strategy because that strategy does not
create a merge commit.

This unreferenced merge commit can only be accessed using the GetCommit
API or through git commands such as git fetch. To retrieve this commit,
you must specify its commit ID or otherwise reference it.


=head2 DeleteApprovalRuleTemplate

=over

=item ApprovalRuleTemplateName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteApprovalRuleTemplate>

Returns: a L<Paws::CodeCommit::DeleteApprovalRuleTemplateOutput> instance

Deletes a specified approval rule template. Deleting a template does
not remove approval rules on pull requests already created with the
template.


=head2 DeleteBranch

=over

=item BranchName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteBranch>

Returns: a L<Paws::CodeCommit::DeleteBranchOutput> instance

Deletes a branch from a repository, unless that branch is the default
branch for the repository.


=head2 DeleteCommentContent

=over

=item CommentId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteCommentContent>

Returns: a L<Paws::CodeCommit::DeleteCommentContentOutput> instance

Deletes the content of a comment made on a change, file, or commit in a
repository.


=head2 DeleteFile

=over

=item BranchName => Str

=item FilePath => Str

=item ParentCommitId => Str

=item RepositoryName => Str

=item [CommitMessage => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteFile>

Returns: a L<Paws::CodeCommit::DeleteFileOutput> instance

Deletes a specified file from a specified branch. A commit is created
on the branch that contains the revision. The file still exists in the
commits earlier to the commit that contains the deletion.


=head2 DeletePullRequestApprovalRule

=over

=item ApprovalRuleName => Str

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeletePullRequestApprovalRule>

Returns: a L<Paws::CodeCommit::DeletePullRequestApprovalRuleOutput> instance

Deletes an approval rule from a specified pull request. Approval rules
can be deleted from a pull request only if the pull request is open,
and if the approval rule was created specifically for a pull request
and not generated from an approval rule template associated with the
repository where the pull request was created. You cannot delete an
approval rule from a merged or closed pull request.


=head2 DeleteRepository

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DeleteRepository>

Returns: a L<Paws::CodeCommit::DeleteRepositoryOutput> instance

Deletes a repository. If a specified repository was already deleted, a
null repository ID is returned.

Deleting a repository also deletes all associated objects and metadata.
After a repository is deleted, all future push calls to the deleted
repository fail.


=head2 DescribeMergeConflicts

=over

=item DestinationCommitSpecifier => Str

=item FilePath => Str

=item MergeOption => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [ConflictDetailLevel => Str]

=item [ConflictResolutionStrategy => Str]

=item [MaxMergeHunks => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::DescribeMergeConflicts>

Returns: a L<Paws::CodeCommit::DescribeMergeConflictsOutput> instance

Returns information about one or more merge conflicts in the attempted
merge of two commit specifiers using the squash or three-way merge
strategy. If the merge option for the attempted merge is specified as
FAST_FORWARD_MERGE, an exception is thrown.


=head2 DescribePullRequestEvents

=over

=item PullRequestId => Str

=item [ActorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PullRequestEventType => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::DescribePullRequestEvents>

Returns: a L<Paws::CodeCommit::DescribePullRequestEventsOutput> instance

Returns information about one or more pull request events.


=head2 DisassociateApprovalRuleTemplateFromRepository

=over

=item ApprovalRuleTemplateName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::DisassociateApprovalRuleTemplateFromRepository>

Returns: nothing

Removes the association between a template and a repository so that
approval rules based on the template are not automatically created when
pull requests are created in the specified repository. This does not
delete any approval rules previously created for pull requests through
the template association.


=head2 EvaluatePullRequestApprovalRules

=over

=item PullRequestId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::EvaluatePullRequestApprovalRules>

Returns: a L<Paws::CodeCommit::EvaluatePullRequestApprovalRulesOutput> instance

Evaluates whether a pull request has met all the conditions specified
in its associated approval rules.


=head2 GetApprovalRuleTemplate

=over

=item ApprovalRuleTemplateName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetApprovalRuleTemplate>

Returns: a L<Paws::CodeCommit::GetApprovalRuleTemplateOutput> instance

Returns information about a specified approval rule template.


=head2 GetBlob

=over

=item BlobId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetBlob>

Returns: a L<Paws::CodeCommit::GetBlobOutput> instance

Returns the base-64 encoded content of an individual blob in a
repository.


=head2 GetBranch

=over

=item [BranchName => Str]

=item [RepositoryName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetBranch>

Returns: a L<Paws::CodeCommit::GetBranchOutput> instance

Returns information about a repository branch, including its name and
the last commit ID.


=head2 GetComment

=over

=item CommentId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetComment>

Returns: a L<Paws::CodeCommit::GetCommentOutput> instance

Returns the content of a comment made on a change, file, or commit in a
repository.


=head2 GetCommentsForComparedCommit

=over

=item AfterCommitId => Str

=item RepositoryName => Str

=item [BeforeCommitId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommentsForComparedCommit>

Returns: a L<Paws::CodeCommit::GetCommentsForComparedCommitOutput> instance

Returns information about comments made on the comparison between two
commits.


=head2 GetCommentsForPullRequest

=over

=item PullRequestId => Str

=item [AfterCommitId => Str]

=item [BeforeCommitId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RepositoryName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommentsForPullRequest>

Returns: a L<Paws::CodeCommit::GetCommentsForPullRequestOutput> instance

Returns comments made on a pull request.


=head2 GetCommit

=over

=item CommitId => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetCommit>

Returns: a L<Paws::CodeCommit::GetCommitOutput> instance

Returns information about a commit, including commit message and
committer information.


=head2 GetDifferences

=over

=item AfterCommitSpecifier => Str

=item RepositoryName => Str

=item [AfterPath => Str]

=item [BeforeCommitSpecifier => Str]

=item [BeforePath => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetDifferences>

Returns: a L<Paws::CodeCommit::GetDifferencesOutput> instance

Returns information about the differences in a valid commit specifier
(such as a branch, tag, HEAD, commit ID, or other fully qualified
reference). Results can be limited to a specified path.


=head2 GetFile

=over

=item FilePath => Str

=item RepositoryName => Str

=item [CommitSpecifier => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetFile>

Returns: a L<Paws::CodeCommit::GetFileOutput> instance

Returns the base-64 encoded contents of a specified file and its
metadata.


=head2 GetFolder

=over

=item FolderPath => Str

=item RepositoryName => Str

=item [CommitSpecifier => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetFolder>

Returns: a L<Paws::CodeCommit::GetFolderOutput> instance

Returns the contents of a specified folder in a repository.


=head2 GetMergeCommit

=over

=item DestinationCommitSpecifier => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [ConflictDetailLevel => Str]

=item [ConflictResolutionStrategy => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetMergeCommit>

Returns: a L<Paws::CodeCommit::GetMergeCommitOutput> instance

Returns information about a specified merge commit.


=head2 GetMergeConflicts

=over

=item DestinationCommitSpecifier => Str

=item MergeOption => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [ConflictDetailLevel => Str]

=item [ConflictResolutionStrategy => Str]

=item [MaxConflictFiles => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetMergeConflicts>

Returns: a L<Paws::CodeCommit::GetMergeConflictsOutput> instance

Returns information about merge conflicts between the before and after
commit IDs for a pull request in a repository.


=head2 GetMergeOptions

=over

=item DestinationCommitSpecifier => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [ConflictDetailLevel => Str]

=item [ConflictResolutionStrategy => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetMergeOptions>

Returns: a L<Paws::CodeCommit::GetMergeOptionsOutput> instance

Returns information about the merge options available for merging two
specified branches. For details about why a merge option is not
available, use GetMergeConflicts or DescribeMergeConflicts.


=head2 GetPullRequest

=over

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetPullRequest>

Returns: a L<Paws::CodeCommit::GetPullRequestOutput> instance

Gets information about a pull request in a specified repository.


=head2 GetPullRequestApprovalStates

=over

=item PullRequestId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetPullRequestApprovalStates>

Returns: a L<Paws::CodeCommit::GetPullRequestApprovalStatesOutput> instance

Gets information about the approval states for a specified pull
request. Approval states only apply to pull requests that have one or
more approval rules applied to them.


=head2 GetPullRequestOverrideState

=over

=item PullRequestId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetPullRequestOverrideState>

Returns: a L<Paws::CodeCommit::GetPullRequestOverrideStateOutput> instance

Returns information about whether approval rules have been set aside
(overridden) for a pull request, and if so, the Amazon Resource Name
(ARN) of the user or identity that overrode the rules and their
requirements for the pull request.


=head2 GetRepository

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetRepository>

Returns: a L<Paws::CodeCommit::GetRepositoryOutput> instance

Returns information about a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository
description on a webpage.


=head2 GetRepositoryTriggers

=over

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::GetRepositoryTriggers>

Returns: a L<Paws::CodeCommit::GetRepositoryTriggersOutput> instance

Gets information about triggers configured for a repository.


=head2 ListApprovalRuleTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListApprovalRuleTemplates>

Returns: a L<Paws::CodeCommit::ListApprovalRuleTemplatesOutput> instance

Lists all approval rule templates in the specified AWS Region in your
AWS account. If an AWS Region is not specified, the AWS Region where
you are signed in is used.


=head2 ListAssociatedApprovalRuleTemplatesForRepository

=over

=item RepositoryName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepository>

Returns: a L<Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepositoryOutput> instance

Lists all approval rule templates that are associated with a specified
repository.


=head2 ListBranches

=over

=item RepositoryName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListBranches>

Returns: a L<Paws::CodeCommit::ListBranchesOutput> instance

Gets information about one or more branches in a repository.


=head2 ListPullRequests

=over

=item RepositoryName => Str

=item [AuthorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PullRequestStatus => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListPullRequests>

Returns: a L<Paws::CodeCommit::ListPullRequestsOutput> instance

Returns a list of pull requests for a specified repository. The return
list can be refined by pull request status or pull request author ARN.


=head2 ListRepositories

=over

=item [NextToken => Str]

=item [Order => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListRepositories>

Returns: a L<Paws::CodeCommit::ListRepositoriesOutput> instance

Gets information about one or more repositories.


=head2 ListRepositoriesForApprovalRuleTemplate

=over

=item ApprovalRuleTemplateName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplate>

Returns: a L<Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplateOutput> instance

Lists all repositories associated with the specified approval rule
template.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::ListTagsForResource>

Returns: a L<Paws::CodeCommit::ListTagsForResourceOutput> instance

Gets information about AWS tags for a specified Amazon Resource Name
(ARN) in AWS CodeCommit. For a list of valid resources in AWS
CodeCommit, see CodeCommit Resources and Operations
(https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
in theI< AWS CodeCommit User Guide>.


=head2 MergeBranchesByFastForward

=over

=item DestinationCommitSpecifier => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [TargetBranch => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergeBranchesByFastForward>

Returns: a L<Paws::CodeCommit::MergeBranchesByFastForwardOutput> instance

Merges two branches using the fast-forward merge strategy.


=head2 MergeBranchesBySquash

=over

=item DestinationCommitSpecifier => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [ConflictDetailLevel => Str]

=item [ConflictResolution => L<Paws::CodeCommit::ConflictResolution>]

=item [ConflictResolutionStrategy => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [TargetBranch => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergeBranchesBySquash>

Returns: a L<Paws::CodeCommit::MergeBranchesBySquashOutput> instance

Merges two branches using the squash merge strategy.


=head2 MergeBranchesByThreeWay

=over

=item DestinationCommitSpecifier => Str

=item RepositoryName => Str

=item SourceCommitSpecifier => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [ConflictDetailLevel => Str]

=item [ConflictResolution => L<Paws::CodeCommit::ConflictResolution>]

=item [ConflictResolutionStrategy => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [TargetBranch => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergeBranchesByThreeWay>

Returns: a L<Paws::CodeCommit::MergeBranchesByThreeWayOutput> instance

Merges two specified branches using the three-way merge strategy.


=head2 MergePullRequestByFastForward

=over

=item PullRequestId => Str

=item RepositoryName => Str

=item [SourceCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergePullRequestByFastForward>

Returns: a L<Paws::CodeCommit::MergePullRequestByFastForwardOutput> instance

Attempts to merge the source commit of a pull request into the
specified destination branch for that pull request at the specified
commit using the fast-forward merge strategy. If the merge is
successful, it closes the pull request.


=head2 MergePullRequestBySquash

=over

=item PullRequestId => Str

=item RepositoryName => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [ConflictDetailLevel => Str]

=item [ConflictResolution => L<Paws::CodeCommit::ConflictResolution>]

=item [ConflictResolutionStrategy => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [SourceCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergePullRequestBySquash>

Returns: a L<Paws::CodeCommit::MergePullRequestBySquashOutput> instance

Attempts to merge the source commit of a pull request into the
specified destination branch for that pull request at the specified
commit using the squash merge strategy. If the merge is successful, it
closes the pull request.


=head2 MergePullRequestByThreeWay

=over

=item PullRequestId => Str

=item RepositoryName => Str

=item [AuthorName => Str]

=item [CommitMessage => Str]

=item [ConflictDetailLevel => Str]

=item [ConflictResolution => L<Paws::CodeCommit::ConflictResolution>]

=item [ConflictResolutionStrategy => Str]

=item [Email => Str]

=item [KeepEmptyFolders => Bool]

=item [SourceCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::MergePullRequestByThreeWay>

Returns: a L<Paws::CodeCommit::MergePullRequestByThreeWayOutput> instance

Attempts to merge the source commit of a pull request into the
specified destination branch for that pull request at the specified
commit using the three-way merge strategy. If the merge is successful,
it closes the pull request.


=head2 OverridePullRequestApprovalRules

=over

=item OverrideStatus => Str

=item PullRequestId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::OverridePullRequestApprovalRules>

Returns: nothing

Sets aside (overrides) all approval rule requirements for a specified
pull request.


=head2 PostCommentForComparedCommit

=over

=item AfterCommitId => Str

=item Content => Str

=item RepositoryName => Str

=item [BeforeCommitId => Str]

=item [ClientRequestToken => Str]

=item [Location => L<Paws::CodeCommit::Location>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentForComparedCommit>

Returns: a L<Paws::CodeCommit::PostCommentForComparedCommitOutput> instance

Posts a comment on the comparison between two commits.


=head2 PostCommentForPullRequest

=over

=item AfterCommitId => Str

=item BeforeCommitId => Str

=item Content => Str

=item PullRequestId => Str

=item RepositoryName => Str

=item [ClientRequestToken => Str]

=item [Location => L<Paws::CodeCommit::Location>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentForPullRequest>

Returns: a L<Paws::CodeCommit::PostCommentForPullRequestOutput> instance

Posts a comment on a pull request.


=head2 PostCommentReply

=over

=item Content => Str

=item InReplyTo => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PostCommentReply>

Returns: a L<Paws::CodeCommit::PostCommentReplyOutput> instance

Posts a comment in reply to an existing comment on a comparison between
commits or a pull request.


=head2 PutFile

=over

=item BranchName => Str

=item FileContent => Str

=item FilePath => Str

=item RepositoryName => Str

=item [CommitMessage => Str]

=item [Email => Str]

=item [FileMode => Str]

=item [Name => Str]

=item [ParentCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PutFile>

Returns: a L<Paws::CodeCommit::PutFileOutput> instance

Adds or updates a file in a branch in an AWS CodeCommit repository, and
generates a commit for the addition in the specified branch.


=head2 PutRepositoryTriggers

=over

=item RepositoryName => Str

=item Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::PutRepositoryTriggers>

Returns: a L<Paws::CodeCommit::PutRepositoryTriggersOutput> instance

Replaces all triggers for a repository. Used to create or delete
triggers.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CodeCommit::TagsMap>


=back

Each argument is described in detail in: L<Paws::CodeCommit::TagResource>

Returns: nothing

Adds or updates tags for a resource in AWS CodeCommit. For a list of
valid resources in AWS CodeCommit, see CodeCommit Resources and
Operations
(https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
in the I<AWS CodeCommit User Guide>.


=head2 TestRepositoryTriggers

=over

=item RepositoryName => Str

=item Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]


=back

Each argument is described in detail in: L<Paws::CodeCommit::TestRepositoryTriggers>

Returns: a L<Paws::CodeCommit::TestRepositoryTriggersOutput> instance

Tests the functionality of repository triggers by sending information
to the trigger target. If real data is available in the repository, the
test sends data from the last commit. If no data is available, sample
data is generated.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeCommit::UntagResource>

Returns: nothing

Removes tags for a resource in AWS CodeCommit. For a list of valid
resources in AWS CodeCommit, see CodeCommit Resources and Operations
(https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
in the I<AWS CodeCommit User Guide>.


=head2 UpdateApprovalRuleTemplateContent

=over

=item ApprovalRuleTemplateName => Str

=item NewRuleContent => Str

=item [ExistingRuleContentSha256 => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateApprovalRuleTemplateContent>

Returns: a L<Paws::CodeCommit::UpdateApprovalRuleTemplateContentOutput> instance

Updates the content of an approval rule template. You can change the
number of required approvals, the membership of the approval rule, and
whether an approval pool is defined.


=head2 UpdateApprovalRuleTemplateDescription

=over

=item ApprovalRuleTemplateDescription => Str

=item ApprovalRuleTemplateName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateApprovalRuleTemplateDescription>

Returns: a L<Paws::CodeCommit::UpdateApprovalRuleTemplateDescriptionOutput> instance

Updates the description for a specified approval rule template.


=head2 UpdateApprovalRuleTemplateName

=over

=item NewApprovalRuleTemplateName => Str

=item OldApprovalRuleTemplateName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateApprovalRuleTemplateName>

Returns: a L<Paws::CodeCommit::UpdateApprovalRuleTemplateNameOutput> instance

Updates the name of a specified approval rule template.


=head2 UpdateComment

=over

=item CommentId => Str

=item Content => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateComment>

Returns: a L<Paws::CodeCommit::UpdateCommentOutput> instance

Replaces the contents of a comment.


=head2 UpdateDefaultBranch

=over

=item DefaultBranchName => Str

=item RepositoryName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateDefaultBranch>

Returns: nothing

Sets or changes the default branch name for the specified repository.

If you use this operation to change the default branch name to the
current default branch name, a success message is returned even though
the default branch did not change.


=head2 UpdatePullRequestApprovalRuleContent

=over

=item ApprovalRuleName => Str

=item NewRuleContent => Str

=item PullRequestId => Str

=item [ExistingRuleContentSha256 => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestApprovalRuleContent>

Returns: a L<Paws::CodeCommit::UpdatePullRequestApprovalRuleContentOutput> instance

Updates the structure of an approval rule created specifically for a
pull request. For example, you can change the number of required
approvers and the approval pool for approvers.


=head2 UpdatePullRequestApprovalState

=over

=item ApprovalState => Str

=item PullRequestId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestApprovalState>

Returns: nothing

Updates the state of a user's approval on a pull request. The user is
derived from the signed-in account when the request is made.


=head2 UpdatePullRequestDescription

=over

=item Description => Str

=item PullRequestId => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestDescription>

Returns: a L<Paws::CodeCommit::UpdatePullRequestDescriptionOutput> instance

Replaces the contents of the description of a pull request.


=head2 UpdatePullRequestStatus

=over

=item PullRequestId => Str

=item PullRequestStatus => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestStatus>

Returns: a L<Paws::CodeCommit::UpdatePullRequestStatusOutput> instance

Updates the status of a pull request.


=head2 UpdatePullRequestTitle

=over

=item PullRequestId => Str

=item Title => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdatePullRequestTitle>

Returns: a L<Paws::CodeCommit::UpdatePullRequestTitleOutput> instance

Replaces the title of a pull request.


=head2 UpdateRepositoryDescription

=over

=item RepositoryName => Str

=item [RepositoryDescription => Str]


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryDescription>

Returns: nothing

Sets or changes the comment or description for a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository
description on a webpage.


=head2 UpdateRepositoryName

=over

=item NewName => Str

=item OldName => Str


=back

Each argument is described in detail in: L<Paws::CodeCommit::UpdateRepositoryName>

Returns: nothing

Renames a repository. The repository name must be unique across the
calling AWS account. Repository names are limited to 100 alphanumeric,
dash, and underscore characters, and cannot include certain characters.
The suffix .git is prohibited. For more information about the limits on
repository names, see Limits
(https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html)
in the AWS CodeCommit User Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllPullRequestEvents(sub { },PullRequestId => Str, [ActorArn => Str, MaxResults => Int, NextToken => Str, PullRequestEventType => Str])

=head2 DescribeAllPullRequestEvents(PullRequestId => Str, [ActorArn => Str, MaxResults => Int, NextToken => Str, PullRequestEventType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pullRequestEvents, passing the object as the first parameter, and the string 'pullRequestEvents' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::DescribePullRequestEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCommentsForComparedCommit(sub { },AfterCommitId => Str, RepositoryName => Str, [BeforeCommitId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllCommentsForComparedCommit(AfterCommitId => Str, RepositoryName => Str, [BeforeCommitId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - commentsForComparedCommitData, passing the object as the first parameter, and the string 'commentsForComparedCommitData' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetCommentsForComparedCommitOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCommentsForPullRequest(sub { },PullRequestId => Str, [AfterCommitId => Str, BeforeCommitId => Str, MaxResults => Int, NextToken => Str, RepositoryName => Str])

=head2 GetAllCommentsForPullRequest(PullRequestId => Str, [AfterCommitId => Str, BeforeCommitId => Str, MaxResults => Int, NextToken => Str, RepositoryName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - commentsForPullRequestData, passing the object as the first parameter, and the string 'commentsForPullRequestData' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetCommentsForPullRequestOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDifferences(sub { },AfterCommitSpecifier => Str, RepositoryName => Str, [AfterPath => Str, BeforeCommitSpecifier => Str, BeforePath => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllDifferences(AfterCommitSpecifier => Str, RepositoryName => Str, [AfterPath => Str, BeforeCommitSpecifier => Str, BeforePath => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - differences, passing the object as the first parameter, and the string 'differences' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::GetDifferencesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBranches(sub { },RepositoryName => Str, [NextToken => Str])

=head2 ListAllBranches(RepositoryName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - branches, passing the object as the first parameter, and the string 'branches' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListBranchesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPullRequests(sub { },RepositoryName => Str, [AuthorArn => Str, MaxResults => Int, NextToken => Str, PullRequestStatus => Str])

=head2 ListAllPullRequests(RepositoryName => Str, [AuthorArn => Str, MaxResults => Int, NextToken => Str, PullRequestStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pullRequestIds, passing the object as the first parameter, and the string 'pullRequestIds' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListPullRequestsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositories(sub { },[NextToken => Str, Order => Str, SortBy => Str])

=head2 ListAllRepositories([NextToken => Str, Order => Str, SortBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::CodeCommit::ListRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

