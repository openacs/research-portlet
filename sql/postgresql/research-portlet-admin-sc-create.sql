--
--  Copyright (C) 2001, 2002 MIT
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

create function inline_0() returns integer as '
declare
    ds_id                           portal_datasources.datasource_id%TYPE;
begin

    ds_id := portal_datasource__new(
        ''research_admin_portlet'',
        ''Displays the research paper portlet''
    );

    perform portal_datasource__set_def_param(
        ds_id,
        ''t'',
        ''t'',
        ''shadeable_p'',
        ''f''
    );

    perform portal_datasource__set_def_param(
        ds_id,
        ''t'',
        ''t'',
        ''shaded_p'',
        ''f''
    );

    perform portal_datasource__set_def_param(
        ds_id,
        ''t'',
        ''t'',
        ''hideable_p'',
        ''t''
    );

    perform portal_datasource__set_def_param(
        ds_id,
        ''t'',
        ''t'',
        ''user_editable_p'',
        ''f''
    );

    perform portal_datasource__set_def_param(
        ds_id,
        ''t'',
        ''t'',
        ''link_hideable_p'',
        ''t''
    );

    perform acs_sc_impl__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''research_admin_portlet''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''GetMyName'',
        ''research_admin_portlet::get_my_name'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''GetPrettyName'',
        ''research_admin_portlet::get_pretty_name'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Link'',
        ''research_admin_portlet::link'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''AddSelfToPage'',
        ''research_admin_portlet::add_self_to_page'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Show'',
        ''research_admin_portlet::show'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Edit'',
        ''research_admin_portlet::edit'',
        ''TCL''
    );

    perform acs_sc_impl_alias__new(
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''RemoveSelfFromPage'',
        ''research_admin_portlet::remove_self_from_page'',
        ''TCL''
    );

    perform acs_sc_binding__new(
        ''portal_datasource'',
        ''research_admin_portlet''
    );

    return 0;

end;
' language 'plpgsql';

select inline_0();
drop function inline_0();
