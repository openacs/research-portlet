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
-- create the research portlet admin data source
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-07-20
-- @version $Id$
--

declare
    ds_id                           portal_datasources.datasource_id%TYPE;
    foo                             integer;
begin

    ds_id := portal_datasource.new(
        'research_admin_portlet',
        'Displays the research paper portlet'
    );

    portal_datasource.set_def_param(
        ds_id,
        't',
        't',
        'shadeable_p',
        'f'
    );

    portal_datasource.set_def_param(
        ds_id,
        't',
        't',
        'shaded_p',
        'f'
    );

    portal_datasource.set_def_param(
        ds_id,
        't',
        't',
        'hideable_p',
        't'
    );

    portal_datasource.set_def_param(
        ds_id,
        't',
        't',
        'user_editable_p',
        'f'
    );

    portal_datasource.set_def_param(
        ds_id,
        't',
        't',
        'link_hideable_p',
        't'
    );

    acs_sc_impl.new(
        'portal_datasource',
        'research_admin_portlet',
        'research_admin_portlet'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'GetMyName',
        'research_admin_portlet::get_my_name',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'GetPrettyName',
        'research_admin_portlet::get_pretty_name',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Link',
        'research_admin_portlet::link',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'AddSelfToPage',
        'research_admin_portlet::add_self_to_page',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Show',
        'research_admin_portlet::show',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Edit',
        'research_admin_portlet::edit',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'RemoveSelfFromPage',
        'research_admin_portlet::remove_self_from_page',
        'TCL'
    );

    acs_sc_binding.new(
        'portal_datasource',
        'research_admin_portlet'
    );

end;
/
show errors
