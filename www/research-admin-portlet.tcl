#
#  Copyright (C) 2001, 2002 OpenForce, Inc.
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

set community_id [dotlrn_community::get_community_id]

set attachments [attachments::get_attachments -object_id [dotlrn_community::get_community_id]]
set add_attachment_url "[dotlrn::get_url]/"
append add_attachment_url [attachments::add_attachment_url \
    -object_id $community_id \
    -pretty_name [dotlrn_community::get_community_name $community_id] \
    -folder_id [dotlrn_fs::get_user_root_folder -user_id [ad_conn user_id]] \
    -return_url "[ad_conn url]?[ad_conn query]" \
]
