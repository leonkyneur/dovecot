require 'spec_helper'

describe 'dovecot::ldap', :type => :class do
  let(:facts) { {:operatingsystem => 'Debian', :operatingsystemrelease => '7.1'} }
  let(:params) { {:ldap_hosts=>'localhost', :ldap_user_attrs =>'cn=user' } }
  it do
      should contain_file('/etc/dovecot/dovecot-ldap.conf.ext') \
        .with_content(/user_attrs = cn=user/)
    end
end

