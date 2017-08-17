<?php

/* navbar_header.html */
class __TwigTemplate_391f33eb323fd335fe0aa846451551278fddbc67e59a229dd625b0527205a7a4 extends Twig_Template
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
        echo "<div class=\"navbar navbar-top\" role=\"navigation\">
\t<div class=\"inner\">

\t<ul id=\"nav-main\" class=\"nav-main linklist\" role=\"menubar\">

\t\t<li id=\"quick-links\" class=\"quick-links dropdown-container responsive-menu";
        // line 6
        if (( !(isset($context["S_DISPLAY_QUICK_LINKS"]) ? $context["S_DISPLAY_QUICK_LINKS"] : null) &&  !(isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null))) {
            echo " hidden";
        }
        echo "\" data-skip-responsive=\"true\">
\t\t\t<a href=\"#\" class=\"dropdown-trigger\">
\t\t\t\t<i class=\"icon fa-bars fa-fw\" aria-hidden=\"true\"></i><span>";
        // line 8
        echo $this->env->getExtension('phpbb')->lang("QUICK_LINKS");
        echo "</span>
\t\t\t</a>
\t\t\t<div class=\"dropdown\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t";
        // line 13
        // line 14
        echo "
\t\t\t\t\t";
        // line 15
        if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
            // line 16
            echo "\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t";
            // line 17
            if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
                // line 18
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 19
                echo (isset($context["U_SEARCH_SELF"]) ? $context["U_SEARCH_SELF"] : null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 20
                echo $this->env->getExtension('phpbb')->lang("SEARCH_SELF");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
            }
            // line 24
            echo "\t\t\t\t\t\t";
            if ((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
                // line 25
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 26
                echo (isset($context["U_SEARCH_NEW"]) ? $context["U_SEARCH_NEW"] : null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 27
                echo $this->env->getExtension('phpbb')->lang("SEARCH_NEW");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
            }
            // line 31
            echo "\t\t\t

\t\t\t\t\t\t
<!--remved line 48-53-->
\t\t\t\t\t";
        }
        // line 36
        echo "
\t\t\t\t\t
\t\t\t\t\t

\t\t\t\t\t";
        // line 40
        // line 41
        echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</li>
\t\t<!-- MAY NEED TO add search box line67-80-->


\t\t";
        // line 47
        // line 48
        echo "\t\t<!-- *** remove code from 72-76 -->

\t\t";
        // line 50
        // line 51
        echo "\t\t";
        if ((isset($context["U_ACP"]) ? $context["U_ACP"] : null)) {
            // line 52
            echo "\t\t\t<li data-last-responsive=\"true\">
\t\t\t\t<a href=\"";
            // line 53
            echo (isset($context["U_ACP"]) ? $context["U_ACP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("ACP");
            echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-cogs fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 54
            echo $this->env->getExtension('phpbb')->lang("ACP_SHORT");
            echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
        }
        // line 58
        echo "\t\t";
        if ((isset($context["U_MCP"]) ? $context["U_MCP"] : null)) {
            // line 59
            echo "\t\t\t<li data-last-responsive=\"true\">
\t\t\t\t<a href=\"";
            // line 60
            echo (isset($context["U_MCP"]) ? $context["U_MCP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-gavel fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 61
            echo $this->env->getExtension('phpbb')->lang("MCP_SHORT");
            echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
        }
        // line 65
        echo "
\t";
        // line 66
        if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
            // line 67
            echo "\t\t";
            // line 68
            echo "\t\t<li id=\"username_logged_in\" class=\"rightside ";
            if ((isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null)) {
                echo " no-bulletin";
            }
            echo "\" data-skip-responsive=\"true\">
\t\t\t";
            // line 69
            // line 70
            echo "\t\t\t<div class=\"header-profile dropdown-container\">\t\t
\t\t\t\t<a href=\"";
            // line 71
            echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
            echo "\" class=\"header-avatar dropdown-trigger\">";
            if ((isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null)) {
                echo (isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null);
                echo " ";
            }
            echo " ";
            echo (isset($context["CURRENT_USERNAME_SIMPLE"]) ? $context["CURRENT_USERNAME_SIMPLE"] : null);
            echo "</a>
\t\t\t\t<div class=\"dropdown\">
\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t";
            // line 75
            if ((isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null)) {
                // line 76
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 77
                echo (isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null);
                echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-refresh fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 78
                echo $this->env->getExtension('phpbb')->lang("RESTORE_PERMISSIONS");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
            }
            // line 82
            echo "
\t\t\t\t\t";
            // line 83
            // line 84
            echo "<!-- remove line 105-110-->
<!-- remove profile, line 93-97-->
\t\t


\t\t\t\t\t\t";
            // line 89
            // line 90
            echo "
\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
            // line 93
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">
\t\t\t\t\t\t\t<!--<a href=\"http://ec2-54-255-137-4.ap-southeast-1.compute.amazonaws.com/ISE/login.jsp\">-->
\t\t\t\t\t\t\t<!--<a href=\"http://localhost:8080/ISE/login.jsp\">-->
\t\t\t\t\t\t\t<i class=\"icon fa-power-off fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 96
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
            // line 102
            // line 103
            echo "\t\t</li>
\t\t";
            // line 104
            if ((isset($context["S_DISPLAY_PM"]) ? $context["S_DISPLAY_PM"] : null)) {
                // line 105
                echo "\t\t\t<li class=\"rightside\" data-skip-responsive=\"true\">
\t\t\t\t<a href=\"";
                // line 106
                echo (isset($context["U_PRIVATEMSGS"]) ? $context["U_PRIVATEMSGS"] : null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-inbox fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 107
                echo $this->env->getExtension('phpbb')->lang("PRIVATE_MESSAGES");
                echo " </span><strong class=\"badge";
                if ( !(isset($context["PRIVATE_MESSAGE_COUNT"]) ? $context["PRIVATE_MESSAGE_COUNT"] : null)) {
                    echo " hidden";
                }
                echo "\">";
                echo (isset($context["PRIVATE_MESSAGE_COUNT"]) ? $context["PRIVATE_MESSAGE_COUNT"] : null);
                echo "</strong>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
            }
            // line 111
            echo "\t\t";
            if ((isset($context["S_NOTIFICATIONS_DISPLAY"]) ? $context["S_NOTIFICATIONS_DISPLAY"] : null)) {
                // line 112
                echo "\t\t<!-- remove notification, line 118 - 123-->

\t\t";
            }
            // line 115
            echo "\t\t";
            // line 116
            echo "\t";
        } else {
            // line 117
            echo "\t\t<li class=\"rightside\"  data-skip-responsive=\"true\">
\t\t\t<a href=\"";
            // line 118
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">
\t\t\t\t<i class=\"icon fa-power-off fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 119
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</span>
\t\t\t</a>
\t\t</li>
\t\t";
            // line 122
            if (((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null) &&  !((isset($context["S_SHOW_COPPA"]) ? $context["S_SHOW_COPPA"] : null) || (isset($context["S_REGISTRATION"]) ? $context["S_REGISTRATION"] : null)))) {
                // line 123
                echo "\t\t\t<li class=\"rightside\" data-skip-responsive=\"true\">
\t\t\t\t<a href=\"";
                // line 124
                echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-pencil-square-o  fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 125
                echo $this->env->getExtension('phpbb')->lang("REGISTER");
                echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
            }
            // line 129
            echo "\t\t";
            // line 130
            echo "\t";
        }
        // line 131
        echo "\t</ul>
    </div>
</div>
<!-- *** remove line 188 - 236 -->

";
    }

    public function getTemplateName()
    {
        return "navbar_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  306 => 131,  303 => 130,  301 => 129,  294 => 125,  290 => 124,  287 => 123,  285 => 122,  279 => 119,  273 => 118,  270 => 117,  267 => 116,  265 => 115,  260 => 112,  257 => 111,  244 => 107,  240 => 106,  237 => 105,  235 => 104,  232 => 103,  231 => 102,  222 => 96,  214 => 93,  209 => 90,  208 => 89,  201 => 84,  200 => 83,  197 => 82,  190 => 78,  186 => 77,  183 => 76,  181 => 75,  167 => 71,  164 => 70,  163 => 69,  156 => 68,  154 => 67,  152 => 66,  149 => 65,  142 => 61,  136 => 60,  133 => 59,  130 => 58,  123 => 54,  117 => 53,  114 => 52,  111 => 51,  110 => 50,  106 => 48,  105 => 47,  97 => 41,  96 => 40,  90 => 36,  83 => 31,  76 => 27,  72 => 26,  69 => 25,  66 => 24,  59 => 20,  55 => 19,  52 => 18,  50 => 17,  47 => 16,  45 => 15,  42 => 14,  41 => 13,  33 => 8,  26 => 6,  19 => 1,);
    }
}
/* <div class="navbar navbar-top" role="navigation">*/
/* 	<div class="inner">*/
/* */
/* 	<ul id="nav-main" class="nav-main linklist" role="menubar">*/
/* */
/* 		<li id="quick-links" class="quick-links dropdown-container responsive-menu<!-- IF not S_DISPLAY_QUICK_LINKS and not S_DISPLAY_SEARCH --> hidden<!-- ENDIF -->" data-skip-responsive="true">*/
/* 			<a href="#" class="dropdown-trigger">*/
/* 				<i class="icon fa-bars fa-fw" aria-hidden="true"></i><span>{L_QUICK_LINKS}</span>*/
/* 			</a>*/
/* 			<div class="dropdown">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents" role="menu">*/
/* 					<!-- EVENT navbar_header_quick_links_before -->*/
/* */
/* 					<!-- IF S_DISPLAY_SEARCH -->*/
/* 						<li class="separator"></li>*/
/* 						<!-- IF S_REGISTERED_USER -->*/
/* 							<li>*/
/* 								<a href="{U_SEARCH_SELF}" role="menuitem">*/
/* 									<i class="icon fa-file fa-fw" aria-hidden="true"></i><span>{L_SEARCH_SELF}</span>*/
/* 								</a>*/
/* 							</li>*/
/* 						<!-- ENDIF -->*/
/* 						<!-- IF S_USER_LOGGED_IN -->*/
/* 							<li>*/
/* 								<a href="{U_SEARCH_NEW}" role="menuitem">*/
/* 									<i class="icon fa-file fa-fw" aria-hidden="true"></i><span>{L_SEARCH_NEW}</span>*/
/* 								</a>*/
/* 							</li>*/
/* 						<!-- ENDIF -->*/
/* 			*/
/* */
/* 						*/
/* <!--remved line 48-53-->*/
/* 					<!-- ENDIF -->*/
/* */
/* 					*/
/* 					*/
/* */
/* 					<!-- EVENT navbar_header_quick_links_after -->*/
/* 				</ul>*/
/* 			</div>*/
/* 		</li>*/
/* 		<!-- MAY NEED TO add search box line67-80-->*/
/* */
/* */
/* 		<!-- EVENT overall_header_navigation_prepend -->*/
/* 		<!-- *** remove code from 72-76 -->*/
/* */
/* 		<!-- EVENT overall_header_navigation_append -->*/
/* 		<!-- IF U_ACP -->*/
/* 			<li data-last-responsive="true">*/
/* 				<a href="{U_ACP}" title="{L_ACP}" role="menuitem">*/
/* 					<i class="icon fa-cogs fa-fw" aria-hidden="true"></i><span>{L_ACP_SHORT}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- IF U_MCP -->*/
/* 			<li data-last-responsive="true">*/
/* 				<a href="{U_MCP}" title="{L_MCP}" role="menuitem">*/
/* 					<i class="icon fa-gavel fa-fw" aria-hidden="true"></i><span>{L_MCP_SHORT}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_REGISTERED_USER -->*/
/* 		<!-- EVENT navbar_header_user_profile_prepend -->*/
/* 		<li id="username_logged_in" class="rightside <!-- IF CURRENT_USER_AVATAR --> no-bulletin<!-- ENDIF -->" data-skip-responsive="true">*/
/* 			<!-- EVENT navbar_header_username_prepend -->*/
/* 			<div class="header-profile dropdown-container">		*/
/* 				<a href="{U_PROFILE}" class="header-avatar dropdown-trigger"><!-- IF CURRENT_USER_AVATAR -->{CURRENT_USER_AVATAR} <!-- ENDIF --> {CURRENT_USERNAME_SIMPLE}</a>*/
/* 				<div class="dropdown">*/
/* 					<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 					<ul class="dropdown-contents" role="menu">*/
/* 						<!-- IF U_RESTORE_PERMISSIONS -->*/
/* 							<li>*/
/* 								<a href="{U_RESTORE_PERMISSIONS}">*/
/* 									<i class="icon fa-refresh fa-fw" aria-hidden="true"></i><span>{L_RESTORE_PERMISSIONS}</span>*/
/* 								</a>*/
/* 							</li>*/
/* 						<!-- ENDIF -->*/
/* */
/* 					<!-- EVENT navbar_header_profile_list_before -->*/
/* <!-- remove line 105-110-->*/
/* <!-- remove profile, line 93-97-->*/
/* 		*/
/* */
/* */
/* 						<!-- EVENT navbar_header_profile_list_after -->*/
/* */
/* 				<li class="separator"></li>*/
/* 								<li>*/
/* 							<a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem">*/
/* 							<!--<a href="http://ec2-54-255-137-4.ap-southeast-1.compute.amazonaws.com/ISE/login.jsp">-->*/
/* 							<!--<a href="http://localhost:8080/ISE/login.jsp">-->*/
/* 							<i class="icon fa-power-off fa-fw" aria-hidden="true"></i><span>{L_LOGIN_LOGOUT}</span>*/
/* 							</a>*/
/* 						</li>*/
/* 					</ul>*/
/* 				</div>*/
/* 			</div>*/
/* 			<!-- EVENT navbar_header_username_append -->*/
/* 		</li>*/
/* 		<!-- IF S_DISPLAY_PM -->*/
/* 			<li class="rightside" data-skip-responsive="true">*/
/* 				<a href="{U_PRIVATEMSGS}" role="menuitem">*/
/* 					<i class="icon fa-inbox fa-fw" aria-hidden="true"></i><span>{L_PRIVATE_MESSAGES} </span><strong class="badge<!-- IF not PRIVATE_MESSAGE_COUNT --> hidden<!-- ENDIF -->">{PRIVATE_MESSAGE_COUNT}</strong>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- IF S_NOTIFICATIONS_DISPLAY -->*/
/* 		<!-- remove notification, line 118 - 123-->*/
/* */
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT navbar_header_user_profile_append -->*/
/* 	<!-- ELSE -->*/
/* 		<li class="rightside"  data-skip-responsive="true">*/
/* 			<a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem">*/
/* 				<i class="icon fa-power-off fa-fw" aria-hidden="true"></i><span>{L_LOGIN_LOGOUT}</span>*/
/* 			</a>*/
/* 		</li>*/
/* 		<!-- IF S_REGISTER_ENABLED and not (S_SHOW_COPPA or S_REGISTRATION) -->*/
/* 			<li class="rightside" data-skip-responsive="true">*/
/* 				<a href="{U_REGISTER}" role="menuitem">*/
/* 					<i class="icon fa-pencil-square-o  fa-fw" aria-hidden="true"></i><span>{L_REGISTER}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT navbar_header_logged_out_content -->*/
/* 	<!-- ENDIF -->*/
/* 	</ul>*/
/*     </div>*/
/* </div>*/
/* <!-- *** remove line 188 - 236 -->*/
/* */
/* */
