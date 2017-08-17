<?php

/* @robertheim_topictags/event/acp_overall_footer_after.html */
class __TwigTemplate_df4f1a48de72e66a638b45b1003c49af2e8390c79683cccc7f82184ffac681ac extends Twig_Template
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
        $location = "js_includes.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("js_includes.html", "@robertheim_topictags/event/acp_overall_footer_after.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/event/acp_overall_footer_after.html";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }
}
/* <!-- INCLUDE js_includes.html -->*/
/* */
