<?php

/* @robertheim_topictags/event/viewtopic_body_postrow_post_content_footer.html */
class __TwigTemplate_7a27d7926690e8bd5a782617ce7b27ef4f6a58890951a7ba57db9b82ce2758d7 extends Twig_Template
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
        if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_FIRST_ROW", array()) && (isset($context["RH_TOPICTAGS_SHOW"]) ? $context["RH_TOPICTAGS_SHOW"] : null))) {
            // line 2
            echo "<hr/>
<strong>";
            // line 3
            echo $this->env->getExtension('phpbb')->lang("RH_TOPICTAGS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong>
";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rh_topic_tags", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["rh_topic_tags"]) {
                // line 5
                echo "\t<div class=\"rh_tag\"><!--<a href=\"";
                echo $this->getAttribute($context["rh_topic_tags"], "LINK", array());
                echo "\">-->";
                echo $this->getAttribute($context["rh_topic_tags"], "NAME", array());
                echo "<!--</a>--></div>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rh_topic_tags'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/event/viewtopic_body_postrow_post_content_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  33 => 5,  29 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF postrow.S_FIRST_ROW && RH_TOPICTAGS_SHOW -->*/
/* <hr/>*/
/* <strong>{L_RH_TOPICTAGS}{L_COLON}</strong>*/
/* <!-- BEGIN rh_topic_tags -->*/
/* 	<div class="rh_tag"><!--<a href="{rh_topic_tags.LINK}">-->{rh_topic_tags.NAME}<!--</a>--></div>*/
/* <!-- END rh_topic_tags -->*/
/* <!-- ENDIF -->*/
/* */
