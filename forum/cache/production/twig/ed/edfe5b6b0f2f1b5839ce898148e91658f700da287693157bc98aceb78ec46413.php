<?php

/* @robertheim_topictags/small_tag.html */
class __TwigTemplate_7dcff038ca1c42214b31852ddfa140a838c82d389de15ad01cbcf5ab811c9d87 extends Twig_Template
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
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rh_tags_tmp", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["rh_tags_tmp"]) {
            // line 2
            echo "\t<div class=\"rh_tag\">";
            echo $this->getAttribute($context["rh_tags_tmp"], "NAME", array());
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rh_tags_tmp'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/small_tag.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  23 => 2,  19 => 1,);
    }
}
/* <!-- BEGIN rh_tags_tmp -->*/
/* 	<div class="rh_tag">{rh_tags_tmp.NAME}</div>*/
/* <!-- END rh_tags_tmp -->*/
/* */
