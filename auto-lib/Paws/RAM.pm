package Paws::RAM;
  use Moose;
  sub service { 'ram' }
  sub signing_name { 'ram' }
  sub version { '2018-01-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AcceptResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AssociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceSharePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AssociateResourceSharePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::CreateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DeleteResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DisassociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceSharePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DisassociateResourceSharePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSharingWithAwsOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::EnableSharingWithAwsOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPendingInvitationResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPendingInvitationResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSharePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResourceSharePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromoteResourceShareCreatedFromPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::PromoteResourceShareCreatedFromPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::RejectResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UpdateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourcePolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->GetResourcePolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub GetAllResourceShareAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShareAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShareAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShareAssociations }, @{ $next_result->resourceShareAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShareAssociations') foreach (@{ $result->resourceShareAssociations });
        $result = $self->GetResourceShareAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShareAssociations') foreach (@{ $result->resourceShareAssociations });
    }

    return undef
  }
  sub GetAllResourceShareInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShareInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShareInvitations(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShareInvitations }, @{ $next_result->resourceShareInvitations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShareInvitations') foreach (@{ $result->resourceShareInvitations });
        $result = $self->GetResourceShareInvitations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShareInvitations') foreach (@{ $result->resourceShareInvitations });
    }

    return undef
  }
  sub GetAllResourceShares {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShares(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShares(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShares }, @{ $next_result->resourceShares };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShares') foreach (@{ $result->resourceShares });
        $result = $self->GetResourceShares(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShares') foreach (@{ $result->resourceShares });
    }

    return undef
  }
  sub ListAllPrincipals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrincipals(@_, nextToken => $next_result->nextToken);
        push @{ $result->principals }, @{ $next_result->principals };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'principals') foreach (@{ $result->principals });
        $result = $self->ListPrincipals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'principals') foreach (@{ $result->principals });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }


  sub operations { qw/AcceptResourceShareInvitation AssociateResourceShare AssociateResourceSharePermission CreateResourceShare DeleteResourceShare DisassociateResourceShare DisassociateResourceSharePermission EnableSharingWithAwsOrganization GetPermission GetResourcePolicies GetResourceShareAssociations GetResourceShareInvitations GetResourceShares ListPendingInvitationResources ListPermissions ListPrincipals ListResources ListResourceSharePermissions PromoteResourceShareCreatedFromPolicy RejectResourceShareInvitation TagResource UntagResource UpdateResourceShare / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM - Perl Interface to AWS AWS Resource Access Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RAM');
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

Use AWS Resource Access Manager to share AWS resources between AWS
accounts. To share a resource, you create a resource share, associate
the resource with the resource share, and specify the principals that
can access the resources associated with the resource share. The
following principals are supported: AWS accounts, organizational units
(OU) from AWS Organizations, and organizations from AWS Organizations.

For more information, see the AWS Resource Access Manager User Guide
(https://docs.aws.amazon.com/ram/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04>


=head1 METHODS

=head2 AcceptResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::AcceptResourceShareInvitation>

Returns: a L<Paws::RAM::AcceptResourceShareInvitationResponse> instance

Accepts an invitation to a resource share from another AWS account.


=head2 AssociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::AssociateResourceShare>

Returns: a L<Paws::RAM::AssociateResourceShareResponse> instance

Associates the specified resource share with the specified principals
and resources.


=head2 AssociateResourceSharePermission

=over

=item PermissionArn => Str

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Replace => Bool]


=back

Each argument is described in detail in: L<Paws::RAM::AssociateResourceSharePermission>

Returns: a L<Paws::RAM::AssociateResourceSharePermissionResponse> instance

Associates a permission with a resource share.


=head2 CreateResourceShare

=over

=item Name => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [PermissionArns => ArrayRef[Str|Undef]]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::RAM::Tag>]]


=back

Each argument is described in detail in: L<Paws::RAM::CreateResourceShare>

Returns: a L<Paws::RAM::CreateResourceShareResponse> instance

Creates a resource share.


=head2 DeleteResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DeleteResourceShare>

Returns: a L<Paws::RAM::DeleteResourceShareResponse> instance

Deletes the specified resource share.


=head2 DisassociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::DisassociateResourceShare>

Returns: a L<Paws::RAM::DisassociateResourceShareResponse> instance

Disassociates the specified principals or resources from the specified
resource share.


=head2 DisassociateResourceSharePermission

=over

=item PermissionArn => Str

=item ResourceShareArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DisassociateResourceSharePermission>

Returns: a L<Paws::RAM::DisassociateResourceSharePermissionResponse> instance

Disassociates an AWS RAM permission from a resource share.


=head2 EnableSharingWithAwsOrganization






Each argument is described in detail in: L<Paws::RAM::EnableSharingWithAwsOrganization>

Returns: a L<Paws::RAM::EnableSharingWithAwsOrganizationResponse> instance

Enables resource sharing within your AWS Organization.

The caller must be the master account for the AWS Organization.


=head2 GetPermission

=over

=item PermissionArn => Str

=item [PermissionVersion => Int]


=back

Each argument is described in detail in: L<Paws::RAM::GetPermission>

Returns: a L<Paws::RAM::GetPermissionResponse> instance

Gets the contents of an AWS RAM permission in JSON format.


=head2 GetResourcePolicies

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourcePolicies>

Returns: a L<Paws::RAM::GetResourcePoliciesResponse> instance

Gets the policies for the specified resources that you own and have
shared.


=head2 GetResourceShareAssociations

=over

=item AssociationType => Str

=item [AssociationStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareAssociations>

Returns: a L<Paws::RAM::GetResourceShareAssociationsResponse> instance

Gets the resources or principals for the resource shares that you own.


=head2 GetResourceShareInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareInvitationArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareInvitations>

Returns: a L<Paws::RAM::GetResourceShareInvitationsResponse> instance

Gets the invitations for resource sharing that you've received.


=head2 GetResourceShares

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareStatus => Str]

=item [TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShares>

Returns: a L<Paws::RAM::GetResourceSharesResponse> instance

Gets the resource shares that you own or the resource shares that are
shared with you.


=head2 ListPendingInvitationResources

=over

=item ResourceShareInvitationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPendingInvitationResources>

Returns: a L<Paws::RAM::ListPendingInvitationResourcesResponse> instance

Lists the resources in a resource share that is shared with you but
that the invitation is still pending for.


=head2 ListPermissions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPermissions>

Returns: a L<Paws::RAM::ListPermissionsResponse> instance

Lists the AWS RAM permissions.


=head2 ListPrincipals

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPrincipals>

Returns: a L<Paws::RAM::ListPrincipalsResponse> instance

Lists the principals that you have shared resources with or that have
shared resources with you.


=head2 ListResources

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResources>

Returns: a L<Paws::RAM::ListResourcesResponse> instance

Lists the resources that you added to a resource shares or the
resources that are shared with you.


=head2 ListResourceSharePermissions

=over

=item ResourceShareArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResourceSharePermissions>

Returns: a L<Paws::RAM::ListResourceSharePermissionsResponse> instance

Lists the AWS RAM permissions that are associated with a resource
share.


=head2 PromoteResourceShareCreatedFromPolicy

=over

=item ResourceShareArn => Str


=back

Each argument is described in detail in: L<Paws::RAM::PromoteResourceShareCreatedFromPolicy>

Returns: a L<Paws::RAM::PromoteResourceShareCreatedFromPolicyResponse> instance

Resource shares that were created by attaching a policy to a resource
are visible only to the resource share owner, and the resource share
cannot be modified in AWS RAM.

Use this API action to promote the resource share. When you promote the
resource share, it becomes:

=over

=item *

Visible to all principals that it is shared with.

=item *

Modifiable in AWS RAM.

=back



=head2 RejectResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::RejectResourceShareInvitation>

Returns: a L<Paws::RAM::RejectResourceShareInvitationResponse> instance

Rejects an invitation to a resource share from another AWS account.


=head2 TagResource

=over

=item ResourceShareArn => Str

=item Tags => ArrayRef[L<Paws::RAM::Tag>]


=back

Each argument is described in detail in: L<Paws::RAM::TagResource>

Returns: a L<Paws::RAM::TagResourceResponse> instance

Adds the specified tags to the specified resource share that you own.


=head2 UntagResource

=over

=item ResourceShareArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RAM::UntagResource>

Returns: a L<Paws::RAM::UntagResourceResponse> instance

Removes the specified tags from the specified resource share that you
own.


=head2 UpdateResourceShare

=over

=item ResourceShareArn => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::RAM::UpdateResourceShare>

Returns: a L<Paws::RAM::UpdateResourceShareResponse> instance

Updates the specified resource share that you own.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllResourcePolicies(sub { },ResourceArns => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str, Principal => Str])

=head2 GetAllResourcePolicies(ResourceArns => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str, Principal => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourcePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShareAssociations(sub { },AssociationType => Str, [AssociationStatus => Str, MaxResults => Int, NextToken => Str, Principal => Str, ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef]])

=head2 GetAllResourceShareAssociations(AssociationType => Str, [AssociationStatus => Str, MaxResults => Int, NextToken => Str, Principal => Str, ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShareAssociations, passing the object as the first parameter, and the string 'resourceShareAssociations' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceShareAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShareInvitations(sub { },[MaxResults => Int, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareInvitationArns => ArrayRef[Str|Undef]])

=head2 GetAllResourceShareInvitations([MaxResults => Int, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareInvitationArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShareInvitations, passing the object as the first parameter, and the string 'resourceShareInvitations' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceShareInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShares(sub { },ResourceOwner => Str, [MaxResults => Int, Name => Str, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareStatus => Str, TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]])

=head2 GetAllResourceShares(ResourceOwner => Str, [MaxResults => Int, Name => Str, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareStatus => Str, TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShares, passing the object as the first parameter, and the string 'resourceShares' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceSharesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipals(sub { },ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principals => ArrayRef[Str|Undef], ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])

=head2 ListAllPrincipals(ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principals => ArrayRef[Str|Undef], ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - principals, passing the object as the first parameter, and the string 'principals' as the second parameter 

If not, it will return a a L<Paws::RAM::ListPrincipalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principal => Str, ResourceArns => ArrayRef[Str|Undef], ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])

=head2 ListAllResources(ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principal => Str, ResourceArns => ArrayRef[Str|Undef], ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::RAM::ListResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

