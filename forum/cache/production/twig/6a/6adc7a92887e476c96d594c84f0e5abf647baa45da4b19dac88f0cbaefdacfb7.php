<?php

/* @robertheim_topictags/event/topiclist_row_append.html */
class __TwigTemplate_b5823a622829b412285a250be8f86e53d3c4c5cc478cebde3abe4adbe8b2f987 extends Twig_Template
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
        if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "RH_TOPICTAGS_TAGS", array())) {
            // line 2
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "RH_TOPICTAGS_TAGS", array());
            echo "
";
        }
        // line 4
        echo "
";
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/event/topiclist_row_append.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  26 => 4,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF topicrow.RH_TOPICTAGS_TAGS -->*/
/* {topicrow.RH_TOPICTAGS_TAGS}*/
/* <!-- ENDIF -->*/
/* */
/* */
