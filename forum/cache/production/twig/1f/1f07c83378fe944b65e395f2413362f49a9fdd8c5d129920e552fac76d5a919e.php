<?php

/* @robertheim_topictags/event/posting_editor_subject_after.html */
class __TwigTemplate_afa3e01f55735a9c8ab85936a951e9fefd45cc3c9b4f95bf6146e890fb97cd45 extends Twig_Template
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
        if ((isset($context["RH_TOPICTAGS_SHOW_FIELD"]) ? $context["RH_TOPICTAGS_SHOW_FIELD"] : null)) {
            // line 2
            echo "<dl style=\"clear: left;\">
\t<dt><label for=\"rh_topictags\">";
            // line 3
            echo $this->env->getExtension('phpbb')->lang("RH_TOPICTAGS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t<dd>";
            // line 4
            echo $this->env->getExtension('phpbb')->lang("RH_TOPICTAGS_ALLOWED_TAGS");
            echo "
\t\t";
            // line 5
            if ((isset($context["S_RH_TOPICTAGS_WHITELIST_ENABLED"]) ? $context["S_RH_TOPICTAGS_WHITELIST_ENABLED"] : null)) {
                // line 6
                echo "\t\t\t<br/>
\t\t\t";
                // line 7
                $asset_file = "@robertheim_topictags/../whitelist.js";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    }
                    $asset->add_assets_version('4');
                }
                $this->getEnvironment()->get_assets_bag()->add_script($asset);                // line 8
                echo "\t\t\t<div class=\"rh_topictags_whitelist\">
\t\t\t\t";
                // line 9
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rh_topictags_whitelist", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["rh_topictags_whitelist"]) {
                    // line 10
                    echo "\t\t\t\t\t";
                    $this->loadTemplate("simple_tag.html", "@robertheim_topictags/event/posting_editor_subject_after.html", 10)->display(array("NAME" => $this->getAttribute($context["rh_topictags_whitelist"], "NAME", array()), "LINK" => $this->getAttribute($context["rh_topictags_whitelist"], "LINK", array())));
                    // line 11
                    echo "\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rh_topictags_whitelist'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 12
                echo "\t\t\t</div>
\t\t";
            } else {
                // line 14
                echo "\t\t\t";
                echo (isset($context["RH_TOPICTAGS_ALLOWED_TAGS_EXP"]) ? $context["RH_TOPICTAGS_ALLOWED_TAGS_EXP"] : null);
                echo "
\t\t";
            }
            // line 16
            echo "\t</dd>
</dl>

<div ng-app=\"rhTopicTagsInputApp\" ng-controller=\"rhTopicTagsInputCtrl\" data-ng-init=\"init('";
            // line 19
            echo (isset($context["RH_TOPICTAGS"]) ? $context["RH_TOPICTAGS"] : null);
            echo "')\">
\t<div id=\"rhTopicTagsInputAppScope\"></div>
\t<tags-input ng-model=\"tags\" add-on-comma=\"false\" replace-spaces-with-dashes=\"";
            // line 21
            echo (isset($context["RH_TOPICTAGS_CONVERT_SPACE_TO_MINUS"]) ? $context["RH_TOPICTAGS_CONVERT_SPACE_TO_MINUS"] : null);
            echo "\" placeholder=\"tag\" tabindex=\"2\" enable-editing-last-tag=\"true\" min-length=\"1\" allowed-tags-pattern=\"";
            echo (isset($context["RH_TOPICTAGS_ALLOWED_TAGS_REGEX"]) ? $context["RH_TOPICTAGS_ALLOWED_TAGS_REGEX"] : null);
            echo "\">
\t\t<auto-complete source=\"loadTags(\$query)\"></auto-complete>
\t</tags-input>
\t<input type=\"hidden\" name=\"rh_topictags\" id=\"rh_topictags\" value=\"{[{ jsonRep }]}\" />
</div>

";
        }
        // line 28
        echo "
";
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/event/posting_editor_subject_after.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  97 => 28,  85 => 21,  80 => 19,  75 => 16,  69 => 14,  65 => 12,  59 => 11,  56 => 10,  52 => 9,  49 => 8,  38 => 7,  35 => 6,  33 => 5,  29 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF RH_TOPICTAGS_SHOW_FIELD -->*/
/* <dl style="clear: left;">*/
/* 	<dt><label for="rh_topictags">{L_RH_TOPICTAGS}{L_COLON}</label></dt>*/
/* 	<dd>{L_RH_TOPICTAGS_ALLOWED_TAGS}*/
/* 		<!-- IF S_RH_TOPICTAGS_WHITELIST_ENABLED -->*/
/* 			<br/>*/
/* 			<!-- INCLUDEJS @robertheim_topictags/../whitelist.js -->*/
/* 			<div class="rh_topictags_whitelist">*/
/* 				<!-- BEGIN rh_topictags_whitelist -->*/
/* 					{% include 'simple_tag.html' with {'NAME' : rh_topictags_whitelist.NAME, 'LINK' : rh_topictags_whitelist.LINK} only %}*/
/* 				<!-- END rh_topictags_whitelist -->*/
/* 			</div>*/
/* 		<!-- ELSE -->*/
/* 			{RH_TOPICTAGS_ALLOWED_TAGS_EXP}*/
/* 		<!-- ENDIF -->*/
/* 	</dd>*/
/* </dl>*/
/* */
/* <div ng-app="rhTopicTagsInputApp" ng-controller="rhTopicTagsInputCtrl" data-ng-init="init('{RH_TOPICTAGS}')">*/
/* 	<div id="rhTopicTagsInputAppScope"></div>*/
/* 	<tags-input ng-model="tags" add-on-comma="false" replace-spaces-with-dashes="{RH_TOPICTAGS_CONVERT_SPACE_TO_MINUS}" placeholder="tag" tabindex="2" enable-editing-last-tag="true" min-length="1" allowed-tags-pattern="{RH_TOPICTAGS_ALLOWED_TAGS_REGEX}">*/
/* 		<auto-complete source="loadTags($query)"></auto-complete>*/
/* 	</tags-input>*/
/* 	<input type="hidden" name="rh_topictags" id="rh_topictags" value="{[{ jsonRep }]}" />*/
/* </div>*/
/* */
/* <!-- ENDIF -->*/
/* */
/* */
