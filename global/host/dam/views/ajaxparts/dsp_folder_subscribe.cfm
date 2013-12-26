﻿<!---
*
* Copyright (C) 2005-2008 Razuna
*
* This file is part of Razuna - Enterprise Digital Asset Management.
*
* Razuna is free software: you can redistribute it and/or modify
* it under the terms of the GNU Affero Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Razuna is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Affero Public License for more details.
*
* You should have received a copy of the GNU Affero Public License
* along with Razuna. If not, see <http://www.gnu.org/licenses/>.
*
* You may restribute this Program with a special exception to the terms
* and conditions of version 3.0 of the AGPL as described in Razuna's
* FLOSS exception. You should have received a copy of the FLOSS exception
* along with Razuna. If not, see <http://www.razuna.com/licenses/>.
*
--->
<cfoutput>
	<form name="form_folder_subscribe#attributes.theid#" action="#self#" method="post" id="form_folder_subscribe#attributes.theid#" onsubmit="savesubscribe('#attributes.theid#');return false;">
	<input type="hidden" name="#theaction#" value="#xfa.submitfolderform#">
	<input type="hidden" name="theid" value="#attributes.theid#">
	<div id="folder#attributes.theid#" style="width:741px;padding-bottom:60px;">
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="grid">
			<!--- Subscribe for E-mail notification --->
			<tr>
				<th colspan="4">Subscribe</th>
			</tr>
			<tr>
				<td><input type="radio" value="yes" name="emailnotify">Yes</td>
				<td><input type="radio" value="no" name="emailnotify" checked="checked">No</td>
			</tr>
			<tr class="list">
				<td></td>
			</tr>
			<!--- Interval for e-mail notificatin --->
			<tr>
				<th colspan="4">E-mail notification interval</th>
			</tr>
			<tr>
				<td width="1%" nowrap align="center"><input type="radio" value="1" name="emailinterval" checked="checked">1 hour</td>
				<td width="1%" nowrap align="center"><input type="radio" value="3" name="emailinterval">3 hour</td>
				<td width="1%" nowrap align="center"><input type="radio" value="6" name="emailinterval">6 hour</td>
				<td width="1%" nowrap align="center"><input type="radio" value="12" name="emailinterval">12 hour</td>
				<td width="1%" nowrap align="center"><input type="radio" value="24" name="emailinterval">Every day</td>
				<td><input type="radio" value="168" name="emailinterval">Once a week</td>
			</tr>
		</table>
		<div style="float:right;padding-top:10px;padding-bottom:10px;">
			<input type="submit" name="submit" value="#myFusebox.getApplicationData().defaults.trans("button_update")#" class="button" >
			<div id="updatetextshare" style="float:left;color:green;padding-right:10px;padding-top:4px;font-weight:bold;"></div>
		</div>
	</div>
	</form>
</cfoutput>
