--
--  Copyright (C) 2001, 2002 OpenForce, Inc.
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--

--
-- drop the research admin portlet data source
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-07-20
-- @version $Id$
--

declare
    ds_id                           portal_datasources.datasource_id%TYPE;
    foo                             integer;
begin

    select datasource_id
    into ds_id
    from portal_datasources
    where name = 'research_admin_portlet';

    if ds_id is not null then
        portal_datasource.delete(ds_id);
    end if;

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'GetMyName'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'GetPrettyName'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Link'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'AddSelfToPage'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Show'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Edit'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_admin_portlet',
        'RemoveSelfFromPage'
    );

    acs_sc_binding.delete(
        contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet'
    );

    acs_sc_impl.delete(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet'
    );

end;
/
show errors
