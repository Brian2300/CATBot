<?php

/* navbar_footer.html */
class __TwigTemplate_dd62803175ae54b44d3668cbb0d306d1c8b0597dec5509eddd1e3892f363b3a0 extends Twig_Template
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
        echo "<div class=\"navbar navbar-bottom\" role=\"navigation\">
\t<div class=\"inner\">

\t<ul id=\"nav-footer\" class=\"nav-footer linklist\" role=\"menubar\">
<!-- ***** remove 5- 24 -->
\t\t";
        // line 6
        if (((isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
            // line 7
            echo "\t\t\t<li data-last-responsive=\"true\">
\t\t\t\t<a href=\"";
            // line 8
            echo (isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null);
            echo "\" title=\"";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"icon ";
            if ((isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                echo "fa-check-square-o";
            } else {
                echo "fa-square-o";
            }
            echo " fa-fw\" data-toggle-text=\"";
            echo (isset($context["S_WATCH_FORUM_TOGGLE"]) ? $context["S_WATCH_FORUM_TOGGLE"] : null);
            echo "\" data-toggle-url=\"";
            echo (isset($context["U_WATCH_FORUM_TOGGLE"]) ? $context["U_WATCH_FORUM_TOGGLE"] : null);
            echo "\">
\t\t\t\t\t<i class=\"icon ";
            // line 9
            if ((isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                echo "fa-square-o";
            } else {
                echo "fa-check-square-o";
            }
            echo " fa-fw\" aria-hidden=\"true\"></i><span>";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
        }
        // line 13
        echo "
\t\t";
        // line 14
        // line 15
        echo "\t\t
\t\t";
        // line 16
        // line 17
        echo "\t\t";
        if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
            // line 18
            echo "\t\t<!-- **** delete all board cookies
\t\t\t<li class=\"rightside\">
\t\t\t\t<a href=\"";
            // line 20
            echo (isset($context["U_DELETE_COOKIES"]) ? $context["U_DELETE_COOKIES"] : null);
            echo "\" data-ajax=\"true\" data-refresh=\"true\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-trash fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 21
            echo $this->env->getExtension('phpbb')->lang("DELETE_COOKIES");
            echo "</span>
\t\t\t\t</a>
\t\t\t</li> -->
\t\t";
        }
        // line 25
        echo "\t\t";
        // line 26
        echo "
\t\t";
        // line 27
        // line 28
        echo "\t\t";
        if ((isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null)) {
            // line 29
            echo "\t\t\t<li class=\"rightside\" data-last-responsive=\"true\">
\t\t\t\t<a href=\"";
            // line 30
            echo (isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null);
            echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-envelope fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 31
            echo $this->env->getExtension('phpbb')->lang("CONTACT_US");
            echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
        }
        // line 35
        echo "\t</ul>

\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "navbar_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  109 => 35,  102 => 31,  98 => 30,  95 => 29,  92 => 28,  91 => 27,  88 => 26,  86 => 25,  79 => 21,  75 => 20,  71 => 18,  68 => 17,  67 => 16,  64 => 15,  63 => 14,  60 => 13,  47 => 9,  31 => 8,  28 => 7,  26 => 6,  19 => 1,);
    }
}
/* <div class="navbar navbar-bottom" role="navigation">*/
/* 	<div class="inner">*/
/* */
/* 	<ul id="nav-footer" class="nav-footer linklist" role="menubar">*/
/* <!-- ***** remove 5- 24 -->*/
/* 		<!-- IF U_WATCH_FORUM_LINK and not S_IS_BOT -->*/
/* 			<li data-last-responsive="true">*/
/* 				<a href="{U_WATCH_FORUM_LINK}" title="{S_WATCH_FORUM_TITLE}" data-ajax="toggle_link" data-toggle-class="icon <!-- IF S_WATCHING_FORUM -->fa-check-square-o<!-- ELSE -->fa-square-o<!-- ENDIF --> fa-fw" data-toggle-text="{S_WATCH_FORUM_TOGGLE}" data-toggle-url="{U_WATCH_FORUM_TOGGLE}">*/
/* 					<i class="icon <!-- IF S_WATCHING_FORUM -->fa-square-o<!-- ELSE -->fa-check-square-o<!-- ENDIF --> fa-fw" aria-hidden="true"></i><span>{S_WATCH_FORUM_TITLE}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT overall_footer_timezone_before -->*/
/* 		*/
/* 		<!-- EVENT overall_footer_timezone_after -->*/
/* 		<!-- IF not S_IS_BOT -->*/
/* 		<!-- **** delete all board cookies*/
/* 			<li class="rightside">*/
/* 				<a href="{U_DELETE_COOKIES}" data-ajax="true" data-refresh="true" role="menuitem">*/
/* 					<i class="icon fa-trash fa-fw" aria-hidden="true"></i><span>{L_DELETE_COOKIES}</span>*/
/* 				</a>*/
/* 			</li> -->*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT overall_footer_teamlink_before -->*/
/* */
/* 		<!-- EVENT overall_footer_teamlink_after -->*/
/* 		<!-- IF U_CONTACT_US -->*/
/* 			<li class="rightside" data-last-responsive="true">*/
/* 				<a href="{U_CONTACT_US}" role="menuitem">*/
/* 					<i class="icon fa-envelope fa-fw" aria-hidden="true"></i><span>{L_CONTACT_US}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 	</ul>*/
/* */
/* 	</div>*/
/* </div>*/
/* */
