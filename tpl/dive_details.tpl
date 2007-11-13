<!-- Include links_details -->
{include file='links_details.tpl'}
<!-- End include links_details -->
   <table class="divetable" cellspacing="0" cellpadding="0" width="100%">
    <tr class="divesection">
	    <td colspan="4">&nbsp;</td>
	</tr>

{* Show Dive Information *}

    {* Show main dive details *}
	<tr class="divetitle">
	    <td width="25%">{$logbook_divedate}</td>
	    <td width="25%">{$logbook_entrytime}</td>
	    <td width="25%">{$logbook_divetime}</td>
	    <td width="25%">{$logbook_depth}</td>
	</tr>

    <tr class="divecontent">
	    <td>{$dive_date}</td>
		<td>{$entry_time}</td>
		<td>{$dive_time}</td>
        <td>{$dive_depth}</td>
    </tr>

    {*	Show dive location details *}
    <tr class="divetitle">
	    <td>{$logbook_place}</td>
	    <td colspan="2">{$logbook_city}</td>
	    <td>{$logbook_country}</td>
	</tr>

	<tr class="divecontent">
        {if isset($dive_site_nr)} 
            {if isset($multiuser_id)}
            <td><a href="{$app_path}/divesite.php/{$multiuser_id}/{$dive_site_nr}" title="{$dive_place} {$logbook_place_linktitle}">{$dive_place}</a></td>
            {else}
            <td><a href="{$app_path}/divesite.php/{$dive_site_nr}" title="{$dive_place} {$logbook_place_linktitle}">{$dive_place}</a></td>
            {/if}
        {else}
            <td>-</td>
        {/if} 
        {if isset($dive_city)} 
        <td colspan="2">{$dive_city}</td>
        {else}
        <td>-</td>
        {/if}
        {if isset($dive_country)} 
        <td>{$dive_country}</td>
        {else}
        <td>-</td>
        {/if}
	</tr>

    {* 	Show buddy details *}
	{if isset($buddy)}
        <tr class="divetitle">
		    <td colspan="4">{$logbook_buddy}</td>
        </tr>
        <tr class="divecontent">
		    <td colspan="4">{$buddy}</td>
		</tr>
	{/if}

    {* Dive pictures *}
    {if isset($pics)}
		<tr><td colspan="4" class="spacing">&nbsp;</td></tr>
        <tr><td colspan="4">
            <center>
		        <a href="{$picpath_web}"  rel="lightbox[others]"  title="{$divepic_linktit}">{$divepic_pt}</a>
            {foreach from=$image_link item=foo}
                {$foo}
            {/foreach}
		</center>
		</td></tr>

    {/if}

    {* Dive profile *}
    {if isset($profile)}
		<tr><td colspan="4" class="spacing">&nbsp;</td></tr>
        <tr><td colspan="4">
		    <center>
            {if isset($multiuser_id)}
		        <img src="{$app_path}/drawprofile.php/{$multiuser_id}/{$get_nr}"  alt="{$dive_profile_title}" title="{$dive_profile_title}">
            {else}
                <img src="{$app_path}/drawprofile.php/{$get_nr}"  alt="{$dive_profile_title}" title="{$dive_profile_title}">
            {/if}
		    </center>
		    </td>
        </tr>
    {/if}
    {*  Conditions *}
	    <tr><td colspan="4" class="spacing">&nbsp;</td></tr>
        <tr class="divesection">
            <td colspan="4">{$dive_sect_conditions}</td>
	    </tr>

    {* 	Show weather conditions *}
	    <tr class="divetitle">
	        <td>{$logbook_weather}</td>
	        <td>{$logbook_visibility}</td>
	        <td>{$logbook_altitude}</td>
	        <td>{$logbook_airtemp}</td>
	    </tr>
	
    <tr class="divecontent">
	{if isset($Weather)}
	    <td>{$Weather}</td>
    {else}
        <td>-</td>
	{/if}
    {if isset($Visibility)}
	    <td>{$Visibility}</td>
	{else}
	    <td>-</td>
    {/if}

    {if isset($Altitude)}
        <td>{$Altitude}</td>
	{else}
        <td>-</td>
    {/if}

	{if isset($Airtemp)}
        <td>{$Airtemp}</td>
    {else}
        <td>-</td>
    {/if}
	</tr>

    {* Show water conditions *}
	<tr class="divetitle">
	    <td>{$logbook_water}</td>
	    <td>{$logbook_surface}</td>
	    <td>{$logbook_uwcurrent}</td>
	    <td>{$logbook_watertemp}</td>
	</tr>
	<tr class="divecontent">
	{if isset($Water)}
        <td>{$Water}</td>
	{else}
        <td>-</td>
    {/if}
	{if isset($Surface)}
        <td>{$Surface}</td>
    {else}
        <td>-</td>
    {/if}
    {if isset($UWCurrent)}
        <td>{$UWCurrent}</td>
	{else}
        <td>-</td>
    {/if}
	{if isset($Watertemp)}
	    <td>{$Watertemp}</td>
	{else}
        <td>-</td>
    {/if}
	</tr>

    {* Breathing *}
	<tr>
        <td colspan="4" class="spacing">&nbsp;</td>
    </tr>
    <tr class="divesection">
	    <td colspan="4">{$dive_sect_breathing}</td>
	</tr>

    {* Show tank details *}
	<tr class="divetitle">
	    <td>{$logbook_tanktype}</td>
	    <td>{$logbook_tanksize}</td>
	    <td>{$logbook_gas}</td>
	    <td>{$logbook_avgdepth}</td>
	</tr>

	<tr class="divecontent">
	{ if isset($Tanktype)}
        <td>{$Tanktype}</td>
	{else}
        <td>-</td>
    {/if}

	{if isset($Tanksize)}
        <td>{$Tanksize}</td>
    {else}
        <td>-</td>
    {/if}

	{if isset($Gas)}
	    <td>{$Gas}</td>
	{else}
        <td>-</td>
    {/if}

	{if isset($averagedepth)}
	    <td>{$averagedepth} {$unit_length_short}</td>
    {else}
        <td>-</td>
    {/if}
	</tr>

    {* Show pressure details *}
	<tr class="divetitle">
	    <td>{$logbook_press}</td>
	    <td>{$logbook_prese}</td>
	    <td>{$logbook_presdiff}</td>
	    <td>{$logbook_sac}</td>
	</tr>

	<tr class="divecontent">
	{if isset($PresS)}
        <td>{$PresS}</td>
    {else}
        <td>-</td>
    {/if}
    { if isset($PresE)}
		<td>{$PresE}</td>
	{else }
        <td>-</td>
    {/if}
	
    {if isset($PresSPresE)}
        <td>{$PresSPresE}</td>
	{else }
        <td>-</td>
    {/if}
	{if isset($sac)}
	    <td>{$sac}</td>
	{else}
	    <td>-</td>
	
    {/if}
	</tr>

    {* Dive Details *}
	<tr>
        <td colspan="4" class="spacing">&nbsp;</td>
    </tr>
    <tr class="divesection">
        <td colspan="4">{$dive_sect_details}</td>
    </tr>
    <tr class="divetitle">
        <td>{$logbook_entry}</td>
        <td>{$logbook_deco}</td>
        <td>{$logbook_rep}</td>
        <td>{$logbook_surfint}</td>
    </tr>

    <tr class="divecontent">
        {if isset($Entry)}
        <td>{$Entry}</td>
        {else}
		<td>-</td>
        {/if}

	    <td>{$Deco}</td>
	    <td>{$Rep}</td>
	{if isset($Surfint)}
	    <td>{$Surfint}</td>
	{else }
        <td>-</td>
	{/if}
	</tr>

	{if isset($Decostops) }
        <tr>
            <td colspan="4" class="spacing">&nbsp;</td>
        </tr>
        <tr class="divesection">
		    <td colspan="4">{$logbook_decostops}</td>
		</tr>
        <tr>
            <td colspan="4">{$stops}</td>
        </tr>
	{/if}

    {* Equipment *}
	<tr>
        <td colspan="4" class="spacing">&nbsp;</td>
    </tr>
    <tr class="divesection">
	    <td colspan="4">{$dive_sect_equipment}</td>
	</tr>
    <tr class="divetitle">
	    <td>{$logbook_weight}</td>
	    <td>{$logbook_divesuit}</td>
	    <td colspan="2" >{$logbook_computer}</td>
	</tr>

	<tr class="divecontent">
	{ if isset($Weight)}
        <td>{$Weight}</td>
	{else }
        <td>-</td>
    {/if}

	{if isset($Divesuit)}
		<td>{$Divesuit}</td>
	{else}
        <td>-</td>
    {/if}

	{if isset($Computer)}
	    <td colspan="2">{$Computer}</td>
	{else}
	    <td>-</td>
	{/if}
	</tr>

	{if isset($UsedEquip)}
		<tr class="divetitle">
		    <td colspan="4">{$logbook_usedequip}</td>
		</tr>
        <tr class="divecontent">
		    <td colspan="4">
	     {foreach from=$equip_link item=foo}
                {$foo}
            {/foreach}
		
		</td>
		</tr>
    {/if}

	<tr>
        <td colspan="4" class="spacing">&nbsp;</td>
    </tr>
<br />
    {if isset($Comments)}
		<tr class="divesection">
		    <td colspan="4">{$dive_sect_comments}</td>
		</tr>
        <tr>
        <td colspan="4">{$Comments}</td>
        </tr>    
        <tr class="divesection">
	    <td colspan="4">&nbsp;</td>
	</tr>

   {/if}
   {* Show the links again *}
	<!-- Include links_details -->
{include file='links_details.tpl'}
<!-- End include links_details -->
    </table>