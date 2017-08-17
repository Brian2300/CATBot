<?php

/* topictags.html */
class __TwigTemplate_7e481cfedcc86d2c253efdd366bdbf01021f3d7ea9bff8e63997d02ef273c703 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "topictags.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<a id=\"maincontent\"></a>

<h1>";
        // line 5
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_TITLE");
        echo "</h1>
<p>";
        // line 6
        echo (isset($context["TOPICTAGS_VERSION"]) ? $context["TOPICTAGS_VERSION"] : null);
        echo "</p>

";
        // line 8
        if ((isset($context["S_ERROR"]) ? $context["S_ERROR"] : null)) {
            // line 9
            echo "\t<div class=\"errorbox\">
\t\t<h3>";
            // line 10
            echo $this->env->getExtension('phpbb')->lang("WARNING");
            echo "</h3>
\t\t<p>";
            // line 11
            echo (isset($context["ERROR_MSG"]) ? $context["ERROR_MSG"] : null);
            echo "</p>
\t</div>
";
        }
        // line 14
        echo "
<form id=\"acp_board\" method=\"post\" action=\"";
        // line 15
        echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
        echo "\">
\t
\t<fieldset>
\t\t<legend>";
        // line 18
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CONFIG");
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_enable_all_forums\">";
        // line 20
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ENABLE_IN_ALL_FORUMS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ENABLE_IN_ALL_FORUMS_EXP");
        echo "</span></dt>
\t\t\t<dd>";
        // line 21
        if ((isset($context["TOPICTAGS_IS_ENABLED_IN_ALL_FORUMS"]) ? $context["TOPICTAGS_IS_ENABLED_IN_ALL_FORUMS"] : null)) {
            // line 22
            echo "\t\t\t\t\t";
            echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ENABLE_IN_ALL_FORUMS_ALREADY");
            echo "
\t\t\t\t";
        } else {
            // line 24
            echo "\t\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_enable_in_all_forums\" value=\"1\"/> ";
            echo $this->env->getExtension('phpbb')->lang("YES");
            echo " &nbsp; 
\t\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_enable_in_all_forums\" value=\"0\" checked=\"checked\"/> ";
            // line 25
            echo $this->env->getExtension('phpbb')->lang("NO");
            echo "</dd>
\t\t\t\t";
        }
        // line 27
        echo "\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_disable_all_forums\">";
        // line 29
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISABLE_IN_ALL_FORUMS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISABLE_IN_ALL_FORUMS_EXP");
        echo "</span></dt>
\t\t\t<dd>";
        // line 30
        if ((isset($context["TOPICTAGS_IS_DISABLED_IN_ALL_FORUMS"]) ? $context["TOPICTAGS_IS_DISABLED_IN_ALL_FORUMS"] : null)) {
            // line 31
            echo "\t\t\t\t\t";
            echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISABLE_IN_ALL_FORUMS_ALREADY");
            echo "
\t\t\t\t";
        } else {
            // line 33
            echo "\t\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_disable_in_all_forums\" value=\"1\"/> ";
            echo $this->env->getExtension('phpbb')->lang("YES");
            echo " &nbsp; 
\t\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_disable_in_all_forums\" value=\"0\" checked=\"checked\"/> ";
            // line 34
            echo $this->env->getExtension('phpbb')->lang("NO");
            echo "</dd>
\t\t\t\t";
        }
        // line 36
        echo "\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_display_tags_in_viewforum\">";
        // line 38
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tags_in_viewforum\" value=\"1\" ";
        // line 39
        if ((isset($context["TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM"]) ? $context["TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tags_in_viewforum\" value=\"0\" ";
        // line 40
        if ( !(isset($context["TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM"]) ? $context["TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t</fieldset>
\t<fieldset>
\t\t<legend>";
        // line 44
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CONFIG_TAGCLOUD");
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_display_tagcloud_on_index\">";
        // line 46
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tagcloud_on_index\" value=\"1\" ";
        // line 47
        if ((isset($context["TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"]) ? $context["TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tagcloud_on_index\" value=\"0\" ";
        // line 48
        if ( !(isset($context["TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"]) ? $context["TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_max_tags_in_tagcloud\">";
        // line 51
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_MAX_TAGS_IN_TAGCLOUD");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_MAX_TAGS_IN_TAGCLOUD_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"number\" name=\"robertheim_topictags_max_tags_in_tagcloud\" min=\"1\" value=\"";
        // line 52
        echo (isset($context["TOPICTAGS_MAX_TAGS_IN_TAGCLOUD"]) ? $context["TOPICTAGS_MAX_TAGS_IN_TAGCLOUD"] : null);
        echo "\"/></dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_display_tagcount_in_tagcloud\">";
        // line 55
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tagcount_in_tagcloud\" value=\"1\" ";
        // line 56
        if ((isset($context["TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD"]) ? $context["TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_display_tagcount_in_tagcloud\" value=\"0\" ";
        // line 57
        if ( !(isset($context["TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD"]) ? $context["TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t</fieldset>
\t<fieldset>
\t\t<legend>";
        // line 61
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CONFIG_TAGS");
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_prune\">";
        // line 63
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ALLOWED_TAGS_REGEX");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ALLOWED_TAGS_REGEX_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"text\" name=\"robertheim_topictags_allowed_tags_regex\" size=\"20\" value=\"";
        // line 64
        echo (isset($context["TOPICTAGS_ALLOWED_TAGS_REGEX"]) ? $context["TOPICTAGS_ALLOWED_TAGS_REGEX"] : null);
        echo "\" /></dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_convert_space_to_minus\">";
        // line 67
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CONVERT_SPACE_TO_MINUS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CONVERT_SPACE_TO_MINUS_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_convert_space_to_minus\" value=\"1\" ";
        // line 68
        if ((isset($context["TOPICTAGS_CONVERT_SPACE_TO_MINUS"]) ? $context["TOPICTAGS_CONVERT_SPACE_TO_MINUS"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_convert_space_to_minus\" value=\"0\" ";
        // line 69
        if ( !(isset($context["TOPICTAGS_CONVERT_SPACE_TO_MINUS"]) ? $context["TOPICTAGS_CONVERT_SPACE_TO_MINUS"] : null)) {
            echo "checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_prune\">";
        // line 72
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS_EXP");
        echo "</span></dt>
\t\t\t<dd><textarea name=\"robertheim_topictags_allowed_tags_exp_for_users\" rows=\"3\">";
        // line 73
        echo (isset($context["TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS"]) ? $context["TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS"] : null);
        echo "</textarea></dd>
\t\t</dl>
\t</fieldset>
\t<fieldset>
\t\t<legend>";
        // line 77
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_MAINTENANCE");
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_prune\">";
        // line 79
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune\" value=\"1\" onclick=\"return confirm('";
        // line 80
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_CONFIRM"), "js");
        echo "');\" /> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune\" value=\"0\" checked=\"checked\" /> ";
        // line 81
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_prune_forums\">";
        // line 84
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_FORUMS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_FORUMS_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune_forums\" value=\"1\" onclick=\"return confirm('";
        // line 85
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_FORUMS_CONFIRM"), "js");
        echo "')\" /> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune_forums\" value=\"0\" checked=\"checked\" /> ";
        // line 86
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_prune_invalid\">";
        // line 89
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_INVALID_TAGS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_INVALID_TAGS_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune_invalid_tags\" value=\"1\" onclick=\"return confirm('";
        // line 90
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb')->lang("TOPICTAGS_PRUNE_INVALID_TAGS_CONFIRM"), "js");
        echo "');\" /> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_prune_invalid_tags\" value=\"0\" checked=\"checked\" /> ";
        // line 91
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"robertheim_topictags_calc_count_tags\">";
        // line 94
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CALC_COUNT_TAGS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("TOPICTAGS_CALC_COUNT_TAGS_EXP");
        echo "</span></dt>
\t\t\t<dd><input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_calc_count_tags\" value=\"1\" /> ";
        // line 95
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo " &nbsp; 
\t\t\t\t<input type=\"radio\" class=\"radio\" name=\"robertheim_topictags_calc_count_tags\" value=\"0\" checked=\"checked\" /> ";
        // line 96
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</dd>
\t\t</dl>
\t</fieldset>
\t<p class=\"submit-buttons\">
\t\t<input class=\"button1\" type=\"submit\" id=\"submit\" name=\"submit\" value=\"";
        // line 100
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" />&nbsp;
\t\t<input class=\"button2\" type=\"reset\" id=\"reset\" name=\"reset\" value=\"";
        // line 101
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" />
\t</p>
";
        // line 103
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
</form>
";
        // line 105
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "topictags.html", 105)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "topictags.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  378 => 105,  373 => 103,  368 => 101,  364 => 100,  357 => 96,  353 => 95,  346 => 94,  340 => 91,  334 => 90,  327 => 89,  321 => 86,  315 => 85,  308 => 84,  302 => 81,  296 => 80,  289 => 79,  284 => 77,  277 => 73,  270 => 72,  260 => 69,  252 => 68,  245 => 67,  239 => 64,  232 => 63,  227 => 61,  216 => 57,  208 => 56,  201 => 55,  195 => 52,  188 => 51,  178 => 48,  170 => 47,  163 => 46,  158 => 44,  147 => 40,  139 => 39,  132 => 38,  128 => 36,  123 => 34,  118 => 33,  112 => 31,  110 => 30,  103 => 29,  99 => 27,  94 => 25,  89 => 24,  83 => 22,  81 => 21,  74 => 20,  69 => 18,  63 => 15,  60 => 14,  54 => 11,  50 => 10,  47 => 9,  45 => 8,  40 => 6,  36 => 5,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <a id="maincontent"></a>*/
/* */
/* <h1>{L_TOPICTAGS_TITLE}</h1>*/
/* <p>{TOPICTAGS_VERSION}</p>*/
/* */
/* <!-- IF S_ERROR -->*/
/* 	<div class="errorbox">*/
/* 		<h3>{L_WARNING}</h3>*/
/* 		<p>{ERROR_MSG}</p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <form id="acp_board" method="post" action="{U_ACTION}">*/
/* 	*/
/* 	<fieldset>*/
/* 		<legend>{L_TOPICTAGS_CONFIG}</legend>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_enable_all_forums">{L_TOPICTAGS_ENABLE_IN_ALL_FORUMS}{L_COLON}</label><br /><span>{L_TOPICTAGS_ENABLE_IN_ALL_FORUMS_EXP}</span></dt>*/
/* 			<dd><!-- IF TOPICTAGS_IS_ENABLED_IN_ALL_FORUMS -->*/
/* 					{L_TOPICTAGS_ENABLE_IN_ALL_FORUMS_ALREADY}*/
/* 				<!-- ELSE -->*/
/* 					<input type="radio" class="radio" name="robertheim_topictags_enable_in_all_forums" value="1"/> {L_YES} &nbsp; */
/* 					<input type="radio" class="radio" name="robertheim_topictags_enable_in_all_forums" value="0" checked="checked"/> {L_NO}</dd>*/
/* 				<!-- ENDIF -->*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_disable_all_forums">{L_TOPICTAGS_DISABLE_IN_ALL_FORUMS}{L_COLON}</label><br /><span>{L_TOPICTAGS_DISABLE_IN_ALL_FORUMS_EXP}</span></dt>*/
/* 			<dd><!-- IF TOPICTAGS_IS_DISABLED_IN_ALL_FORUMS -->*/
/* 					{L_TOPICTAGS_DISABLE_IN_ALL_FORUMS_ALREADY}*/
/* 				<!-- ELSE -->*/
/* 					<input type="radio" class="radio" name="robertheim_topictags_disable_in_all_forums" value="1"/> {L_YES} &nbsp; */
/* 					<input type="radio" class="radio" name="robertheim_topictags_disable_in_all_forums" value="0" checked="checked"/> {L_NO}</dd>*/
/* 				<!-- ENDIF -->*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_display_tags_in_viewforum">{L_TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM}{L_COLON}</label><br /><span>{L_TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_display_tags_in_viewforum" value="1" <!-- IF TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM -->checked="checked"<!-- ENDIF -->/> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_display_tags_in_viewforum" value="0" <!-- IF not TOPICTAGS_DISPLAY_TAGS_IN_VIEWFORUM -->checked="checked"<!-- ENDIF -->/> {L_NO}</dd>*/
/* 		</dl>*/
/* 	</fieldset>*/
/* 	<fieldset>*/
/* 		<legend>{L_TOPICTAGS_CONFIG_TAGCLOUD}</legend>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_display_tagcloud_on_index">{L_TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX}{L_COLON}</label><br /><span>{L_TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_display_tagcloud_on_index" value="1" <!-- IF TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX -->checked="checked"<!-- ENDIF -->/> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_display_tagcloud_on_index" value="0" <!-- IF not TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX -->checked="checked"<!-- ENDIF -->/> {L_NO}</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_max_tags_in_tagcloud">{L_TOPICTAGS_MAX_TAGS_IN_TAGCLOUD}{L_COLON}</label><br /><span>{L_TOPICTAGS_MAX_TAGS_IN_TAGCLOUD_EXP}</span></dt>*/
/* 			<dd><input type="number" name="robertheim_topictags_max_tags_in_tagcloud" min="1" value="{TOPICTAGS_MAX_TAGS_IN_TAGCLOUD}"/></dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_display_tagcount_in_tagcloud">{L_TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD}{L_COLON}</label><br /><span>{L_TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_display_tagcount_in_tagcloud" value="1" <!-- IF TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD -->checked="checked"<!-- ENDIF -->/> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_display_tagcount_in_tagcloud" value="0" <!-- IF not TOPICTAGS_DISPLAY_TAGCOUNT_IN_TAGCLOUD -->checked="checked"<!-- ENDIF -->/> {L_NO}</dd>*/
/* 		</dl>*/
/* 	</fieldset>*/
/* 	<fieldset>*/
/* 		<legend>{L_TOPICTAGS_CONFIG_TAGS}</legend>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_prune">{L_TOPICTAGS_ALLOWED_TAGS_REGEX}{L_COLON}</label><br /><span>{L_TOPICTAGS_ALLOWED_TAGS_REGEX_EXP}</span></dt>*/
/* 			<dd><input type="text" name="robertheim_topictags_allowed_tags_regex" size="20" value="{TOPICTAGS_ALLOWED_TAGS_REGEX}" /></dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_convert_space_to_minus">{L_TOPICTAGS_CONVERT_SPACE_TO_MINUS}{L_COLON}</label><br /><span>{L_TOPICTAGS_CONVERT_SPACE_TO_MINUS_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_convert_space_to_minus" value="1" <!-- IF TOPICTAGS_CONVERT_SPACE_TO_MINUS -->checked="checked"<!-- ENDIF -->/> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_convert_space_to_minus" value="0" <!-- IF not TOPICTAGS_CONVERT_SPACE_TO_MINUS -->checked="checked"<!-- ENDIF -->/> {L_NO}</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_prune">{L_TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS}{L_COLON}</label><br /><span>{L_TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS_EXP}</span></dt>*/
/* 			<dd><textarea name="robertheim_topictags_allowed_tags_exp_for_users" rows="3">{TOPICTAGS_ALLOWED_TAGS_EXP_FOR_USERS}</textarea></dd>*/
/* 		</dl>*/
/* 	</fieldset>*/
/* 	<fieldset>*/
/* 		<legend>{L_TOPICTAGS_MAINTENANCE}</legend>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_prune">{L_TOPICTAGS_PRUNE}{L_COLON}</label><br /><span>{L_TOPICTAGS_PRUNE_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_prune" value="1" onclick="return confirm('{LA_TOPICTAGS_PRUNE_CONFIRM}');" /> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_prune" value="0" checked="checked" /> {L_NO}</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_prune_forums">{L_TOPICTAGS_PRUNE_FORUMS}{L_COLON}</label><br /><span>{L_TOPICTAGS_PRUNE_FORUMS_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_prune_forums" value="1" onclick="return confirm('{LA_TOPICTAGS_PRUNE_FORUMS_CONFIRM}')" /> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_prune_forums" value="0" checked="checked" /> {L_NO}</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_prune_invalid">{L_TOPICTAGS_PRUNE_INVALID_TAGS}{L_COLON}</label><br /><span>{L_TOPICTAGS_PRUNE_INVALID_TAGS_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_prune_invalid_tags" value="1" onclick="return confirm('{LA_TOPICTAGS_PRUNE_INVALID_TAGS_CONFIRM}');" /> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_prune_invalid_tags" value="0" checked="checked" /> {L_NO}</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="robertheim_topictags_calc_count_tags">{L_TOPICTAGS_CALC_COUNT_TAGS}{L_COLON}</label><br /><span>{L_TOPICTAGS_CALC_COUNT_TAGS_EXP}</span></dt>*/
/* 			<dd><input type="radio" class="radio" name="robertheim_topictags_calc_count_tags" value="1" /> {L_YES} &nbsp; */
/* 				<input type="radio" class="radio" name="robertheim_topictags_calc_count_tags" value="0" checked="checked" /> {L_NO}</dd>*/
/* 		</dl>*/
/* 	</fieldset>*/
/* 	<p class="submit-buttons">*/
/* 		<input class="button1" type="submit" id="submit" name="submit" value="{L_SUBMIT}" />&nbsp;*/
/* 		<input class="button2" type="reset" id="reset" name="reset" value="{L_RESET}" />*/
/* 	</p>*/
/* {S_FORM_TOKEN}*/
/* </form>*/
/* <!-- INCLUDE overall_footer.html -->*/
/* */
