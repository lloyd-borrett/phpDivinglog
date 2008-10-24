<!-- Include links_details -->
{include file='links_details.tpl'}
<!-- End include links_details -->
    <table class="divetable" cellspacing="0" cellpadding="0" width="100%">
     <tr class="divesection">
	    <td colspan="4">&nbsp;</td>
	</tr>
    {* Show main site details *}
	<tr class="divetitle">
	    <td>{$place_place}</td>
	    <td>{$place_city}</td>
	    <td>{$place_country}</td>
	    <td>{$place_maxdepth}</td>
	</tr>

	<tr class="divecontent">
    	<td>{$Place}</td>
	    <td>{$city}</td>
	    <td>{$country}</td>
	    <td>{$MaxDepth}</td>
	</tr>

    {* 	Show extra site details *}
	<tr class="divetitle">
	    <td>{$place_lat}</td>
	    <td>{$place_lon}</td>
	    <td>&nbsp;</td>
	    <td>{$place_map}</td>
	</tr>

	<tr class="divecontent">
	    <td>{$Lat}</td>
	    <td>{$Lon}</td>
        {if isset($site_google_link)}
		<td><a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;q={$LatDec},{$LonDec}+({strip}{$Place}{/strip})&amp;ie=UTF8&amp;t=k&amp;om=1" target="_blank" title="{$site_google_link}">Google Map</a></td>
        {else}
        <td>&nbsp;</td>
        {/if}

 	    {if isset($pics2)}
	<!--<div>-->
        <td>
    {foreach from=$image_link key=id item=i name=images}
             <a id="thumb" href="{$web_root}/{$i.img_url}" class="highslide" onclick="return hs.expand(this)">
                    <img src="{$web_root}/{$i.img_url}" alt="Highslide JS" title="{$i.img_title}" height="80" width="120" ></a>
        <div class='highslide-caption'>
        {$i.img_title}
        </div>
   {/foreach}
		</td>
<!-- </div> -->
{else}
   <td>&nbsp;</td>
{/if}

</tr>

    {* Show site dives if we have them *}
	{if $dive_count != 0}
	    <tr class="divetitle">
		    <td colspan="4">{$dive_count} {$site_dive_trans}</td>
		</tr>

		<tr class="divecontent">
		    <td colspan="4">
		{foreach from=$dives  item=dive}
           {if isset($multiuser_id)}
           <a href="{$app_path}/index.php{$sep1}{$multiuser_id}{$sep2}{$dive}" title="{$dlog_number_title}{$dive}">{$dive}</a>
           {else}
           <a href="{$app_path}/index.php{$sep2}{$dive}" title="{$dlog_number_title}{$dive}">{$dive}</a>
           {/if}
		{/foreach}
		</td>
		</tr>
	{/if}

	<tr>
        <td colspan="4" class="spacing">&nbsp;</td>
    </tr>

    {*	Comments *}
    {*	Show them if we have them *}
	{if isset($Comments) }
		<tr class="divesection">
		    <td colspan="4">{$site_sect_comments}</td>
		</tr>
        <tr>
            <td colspan="4">{$Comments}</td>
        </tr>
	{/if}
	  <tr class="divesection">
	    <td colspan="4">&nbsp;</td>
	</tr>
     </table>   <!-- Include links_details -->
	{include file='links_details.tpl'}
    <!-- End include links_details -->

