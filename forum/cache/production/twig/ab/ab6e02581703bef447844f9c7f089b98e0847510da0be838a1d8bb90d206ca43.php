<?php

/* acp_logoutredirect.html */
class __TwigTemplate_234773b25ea47ee39487b47fa1f1c31da013b6941c814bf25d64f96b199c2fe6 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "acp_logoutredirect.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<h1>";
        // line 3
        echo $this->env->getExtension('phpbb')->lang("LOGOUTREDIRECT_TITLE");
        echo "</h1>

<form id=\"acp_board\" method=\"post\" action=\"";
        // line 5
        echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
        echo "\">
\t<fieldset>
\t\t<legend>v";
        // line 7
        echo (isset($context["LOGOUTREDIRECT_VERSION"]) ? $context["LOGOUTREDIRECT_VERSION"] : null);
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"logoutredirect_enabled\">";
        // line 9
        echo $this->env->getExtension('phpbb')->lang("LOGOUTREDIRECT_ENABLED");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t\t<dd>
\t\t\t\t<label><input type=\"radio\" class=\"radio\" name=\"logoutredirect_enabled\" value=\"1\" id=\"logoutredirect_enabled\"";
        // line 11
        if ((isset($context["LOGOUTREDIRECT_ENABLED"]) ? $context["LOGOUTREDIRECT_ENABLED"] : null)) {
            echo " checked=\"checked\"";
        }
        echo "/> ";
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo "</label>
\t\t\t\t<label><input type=\"radio\" class=\"radio\" name=\"logoutredirect_enabled\" value=\"0\"";
        // line 12
        if ( !(isset($context["LOGOUTREDIRECT_ENABLED"]) ? $context["LOGOUTREDIRECT_ENABLED"] : null)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</label>
\t\t\t</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"logoutredirect_url\">";
        // line 16
        echo $this->env->getExtension('phpbb')->lang("LOGOUTREDIRECT_URL");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t\t<dd><input type=\"text\" id=\"logoutredirect_url\" name=\"logoutredirect_url\" value=\"";
        // line 17
        echo (isset($context["LOGOUTREDIRECT_URL"]) ? $context["LOGOUTREDIRECT_URL"] : null);
        echo "\" /></dd>
\t\t</dl>
\t</fieldset>
\t<fieldset>
\t\t<legend>";
        // line 21
        echo $this->env->getExtension('phpbb')->lang("ACP_SUBMIT_CHANGES");
        echo "</legend>
\t\t<p class=\"submit-buttons\">
\t\t\t<input class=\"button1\" type=\"submit\" id=\"submit\" name=\"submit\" value=\"";
        // line 23
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" />&nbsp;
\t\t\t<input class=\"button2\" type=\"reset\" id=\"reset\" name=\"reset\" value=\"";
        // line 24
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" />
\t\t</p>
\t\t";
        // line 26
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
\t</fieldset>
</form>

";
        // line 30
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "acp_logoutredirect.html", 30)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "acp_logoutredirect.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  107 => 30,  100 => 26,  95 => 24,  91 => 23,  86 => 21,  79 => 17,  74 => 16,  63 => 12,  55 => 11,  49 => 9,  44 => 7,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <h1>{L_LOGOUTREDIRECT_TITLE}</h1>*/
/* */
/* <form id="acp_board" method="post" action="{U_ACTION}">*/
/* 	<fieldset>*/
/* 		<legend>v{LOGOUTREDIRECT_VERSION}</legend>*/
/* 		<dl>*/
/* 			<dt><label for="logoutredirect_enabled">{L_LOGOUTREDIRECT_ENABLED}{L_COLON}</label></dt>*/
/* 			<dd>*/
/* 				<label><input type="radio" class="radio" name="logoutredirect_enabled" value="1" id="logoutredirect_enabled"<!-- IF LOGOUTREDIRECT_ENABLED --> checked="checked"<!-- ENDIF -->/> {L_YES}</label>*/
/* 				<label><input type="radio" class="radio" name="logoutredirect_enabled" value="0"<!-- IF not LOGOUTREDIRECT_ENABLED --> checked="checked"<!-- ENDIF --> /> {L_NO}</label>*/
/* 			</dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="logoutredirect_url">{L_LOGOUTREDIRECT_URL}{L_COLON}</label></dt>*/
/* 			<dd><input type="text" id="logoutredirect_url" name="logoutredirect_url" value="{LOGOUTREDIRECT_URL}" /></dd>*/
/* 		</dl>*/
/* 	</fieldset>*/
/* 	<fieldset>*/
/* 		<legend>{L_ACP_SUBMIT_CHANGES}</legend>*/
/* 		<p class="submit-buttons">*/
/* 			<input class="button1" type="submit" id="submit" name="submit" value="{L_SUBMIT}" />&nbsp;*/
/* 			<input class="button2" type="reset" id="reset" name="reset" value="{L_RESET}" />*/
/* 		</p>*/
/* 		{S_FORM_TOKEN}*/
/* 	</fieldset>*/
/* </form>*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
