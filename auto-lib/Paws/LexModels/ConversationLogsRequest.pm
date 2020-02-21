package Paws::LexModels::ConversationLogsRequest;
  use Moose;
  has IamRoleArn => (is => 'ro', isa => 'Str', request_name => 'iamRoleArn', traits => ['NameInRequest'], required => 1);
  has LogSettings => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::LogSettingsRequest]', request_name => 'logSettings', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::ConversationLogsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::ConversationLogsRequest object:

  $service_obj->Method(Att1 => { IamRoleArn => $value, ..., LogSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::ConversationLogsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->IamRoleArn

=head1 DESCRIPTION

Provides the settings needed for conversation logs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IamRoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role with permission to write
to your CloudWatch Logs for text logs and your S3 bucket for audio
logs. If audio encryption is enabled, this role also provides access
permission for the AWS KMS key used for encrypting audio logs. For more
information, see Creating an IAM Role and Policy for Conversation Logs
(https://docs.aws.amazon.com/lex/latest/dg/conversation-logs-role-and-policy.html).


=head2 B<REQUIRED> LogSettings => ArrayRef[L<Paws::LexModels::LogSettingsRequest>]

  The settings for your conversation logs. You can log the conversation
text, conversation audio, or both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

