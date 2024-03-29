=begin comment

MailBaby Email Delivery and Management Service API

**Send emails fast and with confidence through our easy to use [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) API interface.** # Overview This is the API interface to the [Mail Baby](https//mail.baby/) Mail services provided by [InterServer](https://www.interserver.net). To use this service you must have an account with us at [my.interserver.net](https://my.interserver.net). # Authentication In order to use most of the API calls you must pass credentials from the [my.interserver.net](https://my.interserver.net/) site. We support several different authentication methods but the preferred method is to use the **API Key** which you can get from the [Account Security](https://my.interserver.net/account_security) page. 

The version of the OpenAPI document: 1.1.0
Contact: support@interserver.net
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package OpenAPIClient::SendingApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# send_adv_mail
#
# Sends an Email with Advanced Options
#
# @param string $subject The subject or title of the email (required)
# @param string $body The main email contents. (required)
# @param EmailAddressName $from  (required)
# @param ARRAY[EmailAddressName] $to A list of destionation email addresses to send this to (required)
# @param ARRAY[EmailAddressName] $replyto (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. (optional)
# @param ARRAY[EmailAddressName] $cc (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. (optional)
# @param ARRAY[EmailAddressName] $bcc (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. (optional)
# @param ARRAY[MailAttachment] $attachments (optional) File attachments to include in the email.  The file contents must be base64 encoded! (optional)
# @param int $id (optional)  ID of the Mail order within our system to use as the Mail Account. (optional)
{
    my $params = {
    'subject' => {
        data_type => 'string',
        description => 'The subject or title of the email',
        required => '1',
    },
    'body' => {
        data_type => 'string',
        description => 'The main email contents.',
        required => '1',
    },
    'from' => {
        data_type => 'EmailAddressName',
        description => '',
        required => '1',
    },
    'to' => {
        data_type => 'ARRAY[EmailAddressName]',
        description => 'A list of destionation email addresses to send this to',
        required => '1',
    },
    'replyto' => {
        data_type => 'ARRAY[EmailAddressName]',
        description => '(optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.',
        required => '0',
    },
    'cc' => {
        data_type => 'ARRAY[EmailAddressName]',
        description => '(optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.',
        required => '0',
    },
    'bcc' => {
        data_type => 'ARRAY[EmailAddressName]',
        description => '(optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.',
        required => '0',
    },
    'attachments' => {
        data_type => 'ARRAY[MailAttachment]',
        description => '(optional) File attachments to include in the email.  The file contents must be base64 encoded!',
        required => '0',
    },
    'id' => {
        data_type => 'int',
        description => '(optional)  ID of the Mail order within our system to use as the Mail Account.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_adv_mail' } = {
        summary => 'Sends an Email with Advanced Options',
        params => $params,
        returns => 'GenericResponse',
        };
}
# @return GenericResponse
#
sub send_adv_mail {
    my ($self, %args) = @_;

    # verify the required parameter 'subject' is set
    unless (exists $args{'subject'}) {
      croak("Missing the required parameter 'subject' when calling send_adv_mail");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling send_adv_mail");
    }

    # verify the required parameter 'from' is set
    unless (exists $args{'from'}) {
      croak("Missing the required parameter 'from' when calling send_adv_mail");
    }

    # verify the required parameter 'to' is set
    unless (exists $args{'to'}) {
      croak("Missing the required parameter 'to' when calling send_adv_mail");
    }

    # parse inputs
    my $_resource_path = '/mail/advsend';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded', 'application/json');

    # form params
    if ( exists $args{'subject'} ) {
                $form_params->{'subject'} = $self->{api_client}->to_form_value($args{'subject'});
    }

    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }

    # form params
    if ( exists $args{'from'} ) {
                $form_params->{'from'} = $self->{api_client}->to_form_value($args{'from'});
    }

    # form params
    if ( exists $args{'to'} ) {
                $form_params->{'to'} = $self->{api_client}->to_form_value($args{'to'});
    }

    # form params
    if ( exists $args{'replyto'} ) {
                $form_params->{'replyto'} = $self->{api_client}->to_form_value($args{'replyto'});
    }

    # form params
    if ( exists $args{'cc'} ) {
                $form_params->{'cc'} = $self->{api_client}->to_form_value($args{'cc'});
    }

    # form params
    if ( exists $args{'bcc'} ) {
                $form_params->{'bcc'} = $self->{api_client}->to_form_value($args{'bcc'});
    }

    # form params
    if ( exists $args{'attachments'} ) {
                $form_params->{'attachments'} = $self->{api_client}->to_form_value($args{'attachments'});
    }

    # form params
    if ( exists $args{'id'} ) {
                $form_params->{'id'} = $self->{api_client}->to_form_value($args{'id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GenericResponse', $response);
    return $_response_object;
}

#
# send_mail
#
# Sends an Email
#
# @param string $to The Contact whom is the primary recipient of this email. (required)
# @param string $from The contact whom is the this email is from. (required)
# @param string $subject The subject or title of the email (required)
# @param string $body The main email contents. (required)
{
    my $params = {
    'to' => {
        data_type => 'string',
        description => 'The Contact whom is the primary recipient of this email.',
        required => '1',
    },
    'from' => {
        data_type => 'string',
        description => 'The contact whom is the this email is from.',
        required => '1',
    },
    'subject' => {
        data_type => 'string',
        description => 'The subject or title of the email',
        required => '1',
    },
    'body' => {
        data_type => 'string',
        description => 'The main email contents.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_mail' } = {
        summary => 'Sends an Email',
        params => $params,
        returns => 'GenericResponse',
        };
}
# @return GenericResponse
#
sub send_mail {
    my ($self, %args) = @_;

    # verify the required parameter 'to' is set
    unless (exists $args{'to'}) {
      croak("Missing the required parameter 'to' when calling send_mail");
    }

    # verify the required parameter 'from' is set
    unless (exists $args{'from'}) {
      croak("Missing the required parameter 'from' when calling send_mail");
    }

    # verify the required parameter 'subject' is set
    unless (exists $args{'subject'}) {
      croak("Missing the required parameter 'subject' when calling send_mail");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling send_mail");
    }

    # parse inputs
    my $_resource_path = '/mail/send';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded', 'application/json');

    # form params
    if ( exists $args{'to'} ) {
                $form_params->{'to'} = $self->{api_client}->to_form_value($args{'to'});
    }

    # form params
    if ( exists $args{'from'} ) {
                $form_params->{'from'} = $self->{api_client}->to_form_value($args{'from'});
    }

    # form params
    if ( exists $args{'subject'} ) {
                $form_params->{'subject'} = $self->{api_client}->to_form_value($args{'subject'});
    }

    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GenericResponse', $response);
    return $_response_object;
}

1;
