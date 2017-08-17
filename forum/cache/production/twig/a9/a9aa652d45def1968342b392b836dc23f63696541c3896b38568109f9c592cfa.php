<?php

/* @robertheim_topictags/tagcloud.html */
class __TwigTemplate_4283ae91c06e7c23d6a296ac48cb87ce27ad14acd94eecb8260b7c1aba0e2841 extends Twig_Template
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
        echo "<!-- change href=\"";
        echo (isset($context["RH_TOPICTAGS_TAGCLOUD_LINK"]) ? $context["RH_TOPICTAGS_TAGCLOUD_LINK"] : null);
        echo " to href=\"#\"\" -->
<h3><a href=\"#\">";
        // line 2
        echo $this->env->getExtension('phpbb')->lang("RH_TOPICTAGS_TAGCLOUD");
        echo "</a></h3>
<p>";
        // line 3
        echo (isset($context["RH_TOPICTAGS_TAGCLOUD_TAG_COUNT"]) ? $context["RH_TOPICTAGS_TAGCLOUD_TAG_COUNT"] : null);
        echo "</p>
";
        // line 4
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rh_topictags_tags", array()))) {
            // line 5
            echo "\t<div class=\"rh_topictags_tagcloud\">
\t\t<ul>
\t\t\t";
            // line 7
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rh_topictags_tags", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["rh_topictags_tags"]) {
                // line 8
                echo "\t\t\t<li>
\t\t\t<!-- remove href=\"";
                // line 9
                echo $this->getAttribute($context["rh_topictags_tags"], "LINK", array());
                echo "\" -->
\t\t\t\t\t<a  class=\"";
                // line 10
                echo $this->getAttribute($context["rh_topictags_tags"], "CSS_CLASS", array());
                echo "\">";
                echo $this->getAttribute($context["rh_topictags_tags"], "NAME", array());
                echo "</a>
\t\t\t\t\t";
                // line 11
                if ((isset($context["RH_TOPICTAGS_TAGCLOUD_SHOW_COUNT"]) ? $context["RH_TOPICTAGS_TAGCLOUD_SHOW_COUNT"] : null)) {
                    // line 12
                    echo "\t\t\t\t\t\t<span class=rh_topictags_count>(";
                    echo $this->getAttribute($context["rh_topictags_tags"], "COUNT", array());
                    echo ")</span>
\t\t\t\t\t";
                }
                // line 14
                echo "\t\t\t</li>
\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rh_topictags_tags'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 16
            echo "\t\t</ul>
\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/tagcloud.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  70 => 16,  63 => 14,  57 => 12,  55 => 11,  49 => 10,  45 => 9,  42 => 8,  38 => 7,  34 => 5,  32 => 4,  28 => 3,  24 => 2,  19 => 1,);
    }
}
/* <!-- change href="{RH_TOPICTAGS_TAGCLOUD_LINK} to href="#"" -->*/
/* <h3><a href="#">{L_RH_TOPICTAGS_TAGCLOUD}</a></h3>*/
/* <p>{RH_TOPICTAGS_TAGCLOUD_TAG_COUNT}</p>*/
/* <!-- IF .rh_topictags_tags -->*/
/* 	<div class="rh_topictags_tagcloud">*/
/* 		<ul>*/
/* 			<!-- BEGIN rh_topictags_tags -->*/
/* 			<li>*/
/* 			<!-- remove href="{rh_topictags_tags.LINK}" -->*/
/* 					<a  class="{rh_topictags_tags.CSS_CLASS}">{rh_topictags_tags.NAME}</a>*/
/* 					<!-- IF RH_TOPICTAGS_TAGCLOUD_SHOW_COUNT -->*/
/* 						<span class=rh_topictags_count>({rh_topictags_tags.COUNT})</span>*/
/* 					<!-- ENDIF -->*/
/* 			</li>*/
/* 			<!-- END rh_topictags_tags -->*/
/* 		</ul>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
