<?php

/* @robertheim_topictags/event/index_body_block_stats_append.html */
class __TwigTemplate_1fd82a91d0d2be2691f0aa2d42fb4754e15d198e51ab41909d2c19747a0218ca extends Twig_Template
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
        if ((isset($context["RH_TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"]) ? $context["RH_TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX"] : null)) {
            // line 2
            echo "</p>

";
            // line 4
            $location = "tagcloud.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("tagcloud.html", "@robertheim_topictags/event/index_body_block_stats_append.html", 4)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 5
            echo "
<p>
";
        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/event/index_body_block_stats_append.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 5,  25 => 4,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF RH_TOPICTAGS_DISPLAY_TAGCLOUD_ON_INDEX -->*/
/* </p>*/
/* */
/* <!-- INCLUDE tagcloud.html -->*/
/* */
/* <p>*/
/* <!-- ENDIF -->*/
/* */
