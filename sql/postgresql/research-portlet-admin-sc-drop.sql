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
-- drop the research admin portlet data source
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-07-20
-- @version $Id$
--

create function inline_0() returns integer as '
declare
    ds_id                           portal_datasources.datasource_id%TYPE;
begin

    select datasource_id
    into ds_id
    from portal_datasources
    where name = ''research_admin_portlet'';

    if ds_id is not null then
        perform portal_datasource__delete(ds_id);
    end if;

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''GetMyName''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''GetPrettyName''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Link''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''AddSelfToPage''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Show''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''Edit''
    );

    perform acs_sc_impl_alias__delete (
        ''portal_datasource'',
        ''research_admin_portlet'',
        ''RemoveSelfFromPage''
    );

    perform acs_sc_binding__delete (
        ''portal_datasource'',
        ''research_admin_portlet''
    );

    perform acs_sc_impl__delete (
        ''portal_datasource'',
        ''research_admin_portlet''
    );

    return 0;

end;
' language 'plpgsql';

select inline_0();
drop function inline_0();
