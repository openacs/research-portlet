<%

    #
    #  Copyright (C) 2001, 2002 MIT
    #
    #  This file is part of dotLRN.
    #
    #  dotLRN is free software; you can redistribute it and/or modify it under the
    #  terms of the GNU General Public License as published by the Free Software
    #  Foundation; either version 2 of the License, or (at your option) any later
    #  version.
    #
    #  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
    #  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    #  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
    #  details.
    #

%>

<if @shaded_p@ false>
<if @n_attachments@ gt 0>

<%
    foreach attachment $attachments {
        template::adp_puts "  <li><a href=\"[lindex $attachment 2]\">[lindex $attachment 1]</a></li>\n"
    }
%>

</if>
<else>
<small>No Research Papers</small>
</else>
</if>
<else>
  &nbsp;
</else>
