<?php

/* posting_editor.html */
class __TwigTemplate_c5b58a4aa8b74f6dbd4f3a4845a9ef6ab0db46b2abcc39ecbc7e5d5ab2b4f36c extends Twig_Template
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
        echo "<fieldset class=\"fields1\">
\t";
        // line 2
        if ((isset($context["ERROR"]) ? $context["ERROR"] : null)) {
            echo "<p class=\"error\">";
            echo (isset($context["ERROR"]) ? $context["ERROR"] : null);
            echo "</p>";
        }
        // line 3
        echo "
\t";
        // line 4
        if (((isset($context["S_SHOW_TOPIC_ICONS"]) ? $context["S_SHOW_TOPIC_ICONS"] : null) || (isset($context["S_SHOW_PM_ICONS"]) ? $context["S_SHOW_PM_ICONS"] : null))) {
            // line 5
            echo "\t<dl>
\t\t<dt><label for=\"icon\">";
            // line 6
            echo $this->env->getExtension('phpbb')->lang("ICON");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd>
\t\t\t<label for=\"icon\"><input type=\"radio\" name=\"icon\" id=\"icon\" value=\"0\" checked=\"checked\" tabindex=\"1\" /> ";
            // line 8
            if ((isset($context["S_SHOW_TOPIC_ICONS"]) ? $context["S_SHOW_TOPIC_ICONS"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("NO_TOPIC_ICON");
            } else {
                echo $this->env->getExtension('phpbb')->lang("NO_PM_ICON");
            }
            echo "</label>
\t\t\t";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topic_icon", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["topic_icon"]) {
                echo "<label for=\"icon-";
                echo $this->getAttribute($context["topic_icon"], "ICON_ID", array());
                echo "\"><input type=\"radio\" name=\"icon\" id=\"icon-";
                echo $this->getAttribute($context["topic_icon"], "ICON_ID", array());
                echo "\" value=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_ID", array());
                echo "\" ";
                echo $this->getAttribute($context["topic_icon"], "S_ICON_CHECKED", array());
                echo " tabindex=\"1\" /><img src=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_IMG", array());
                echo "\" width=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_WIDTH", array());
                echo "\" height=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_HEIGHT", array());
                echo "\" alt=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_ALT", array());
                echo "\" title=\"";
                echo $this->getAttribute($context["topic_icon"], "ICON_ALT", array());
                echo "\" /></label> ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topic_icon'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 10
            echo "\t\t</dd>
\t</dl>
\t";
        }
        // line 13
        echo "
\t";
        // line 14
        if (( !(isset($context["S_PRIVMSGS"]) ? $context["S_PRIVMSGS"] : null) && (isset($context["S_DISPLAY_USERNAME"]) ? $context["S_DISPLAY_USERNAME"] : null))) {
            // line 15
            echo "\t<dl style=\"clear: left;\">
\t\t<dt><label for=\"username\">";
            // line 16
            echo $this->env->getExtension('phpbb')->lang("USERNAME");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"username\" id=\"username\" size=\"25\" value=\"";
            // line 17
            echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
            echo "\" class=\"inputbox autowidth\" /></dd>
\t</dl>
\t";
        }
        // line 20
        echo "
\t";
        // line 21
        // line 22
        echo "
\t";
        // line 23
        if ((((isset($context["S_POST_ACTION"]) ? $context["S_POST_ACTION"] : null) || (isset($context["S_PRIVMSGS"]) ? $context["S_PRIVMSGS"] : null)) || (isset($context["S_EDIT_DRAFT"]) ? $context["S_EDIT_DRAFT"] : null))) {
            // line 24
            echo "\t<dl style=\"clear: left;\">
\t\t<dt><label for=\"subject\">";
            // line 25
            echo $this->env->getExtension('phpbb')->lang("SUBJECT");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd>
\t\t\t";
            // line 27
            // line 28
            echo "\t\t\t<input type=\"text\" name=\"subject\" id=\"subject\" size=\"120\" maxlength=\"";
            if ((isset($context["S_NEW_MESSAGE"]) ? $context["S_NEW_MESSAGE"] : null)) {
                echo "120";
            } else {
                echo "124";
            }
            echo "\" tabindex=\"2\" value=\"";
            echo (isset($context["SUBJECT"]) ? $context["SUBJECT"] : null);
            echo (isset($context["DRAFT_SUBJECT"]) ? $context["DRAFT_SUBJECT"] : null);
            echo "\" class=\"inputbox autowidth\" />
\t\t\t";
            // line 29
            // line 30
            echo "\t\t</dd>
\t</dl>
\t";
            // line 32
            if (((isset($context["CAPTCHA_TEMPLATE"]) ? $context["CAPTCHA_TEMPLATE"] : null) && (isset($context["S_CONFIRM_CODE"]) ? $context["S_CONFIRM_CODE"] : null))) {
                // line 33
                echo "\t\t";
                $value = 3;
                $context['definition']->set('CAPTCHA_TAB_INDEX', $value);
                // line 34
                echo "\t\t";
                $location = (("" . (isset($context["CAPTCHA_TEMPLATE"]) ? $context["CAPTCHA_TEMPLATE"] : null)) . "");
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate((("" . (isset($context["CAPTCHA_TEMPLATE"]) ? $context["CAPTCHA_TEMPLATE"] : null)) . ""), "posting_editor.html", 34)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 35
                echo "\t";
            }
            // line 36
            echo "\t";
        }
        // line 37
        echo "
\t";
        // line 38
        $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
        $this->env->setNamespaceLookUpOrder(array('robertheim_topictags', '__main__'));
        $this->env->loadTemplate('@robertheim_topictags/event/posting_editor_subject_after.html')->display($context);
        $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        // line 39
        echo "
\t";
        // line 40
        $location = "posting_buttons.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("posting_buttons.html", "posting_editor.html", 40)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 41
        echo "    <!-- remove line 42-72-->

\t";
        // line 43
        // line 44
        echo "
\t<div id=\"message-box\" class=\"message-box\">
\t\t<textarea ";
        // line 46
        if ((((isset($context["S_UCP_ACTION"]) ? $context["S_UCP_ACTION"] : null) &&  !(isset($context["S_PRIVMSGS"]) ? $context["S_PRIVMSGS"] : null)) &&  !(isset($context["S_EDIT_DRAFT"]) ? $context["S_EDIT_DRAFT"] : null))) {
            echo "name=\"signature\" id=\"signature\" style=\"height: 9em;\"";
        } else {
            echo "name=\"message\" id=\"message\"";
        }
        echo " rows=\"15\" cols=\"76\" tabindex=\"4\" onselect=\"storeCaret(this);\" onclick=\"storeCaret(this);\" onkeyup=\"storeCaret(this);\" onfocus=\"initInsertions();\" class=\"inputbox\">";
        echo (isset($context["MESSAGE"]) ? $context["MESSAGE"] : null);
        echo (isset($context["DRAFT_MESSAGE"]) ? $context["DRAFT_MESSAGE"] : null);
        echo (isset($context["SIGNATURE"]) ? $context["SIGNATURE"] : null);
        echo "</textarea>
\t</div>

\t";
        // line 49
        // line 50
        echo "\t</fieldset>

";
        // line 52
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "EXTRA_POSTING_OPTIONS", array()) == 1)) {
            // line 53
            echo "
\t";
            // line 54
            if ( !(isset($context["S_SHOW_DRAFTS"]) ? $context["S_SHOW_DRAFTS"] : null)) {
                // line 55
                echo "\t\t</div>
\t</div>
\t";
            }
            // line 58
            echo "
\t";
            // line 59
            if (( !(isset($context["S_SHOW_DRAFTS"]) ? $context["S_SHOW_DRAFTS"] : null) && ( !$this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SIG_EDIT", array()) == 1))) {
                // line 60
                echo "\t<div class=\"panel bg2\">
\t\t<div class=\"inner\">
\t\t<fieldset class=\"submit-buttons\">
\t\t\t";
                // line 63
                echo (isset($context["S_HIDDEN_ADDRESS_FIELD"]) ? $context["S_HIDDEN_ADDRESS_FIELD"] : null);
                echo "
\t\t\t";
                // line 64
                echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
                echo "
\t\t\t";
                // line 65
                // line 66
                echo "\t\t\t<input type=\"submit\" accesskey=\"s\" tabindex=\"6\" name=\"post\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("SUBMIT");
                echo "\" class=\"button1 default-submit-action\" />&nbsp;

\t\t</fieldset>

\t\t</div>
\t</div>
\t";
            }
            // line 73
            echo "
\t<!-- removed line 105- 124 to remove Options tab --> 

\t";
            // line 76
            if (( !(isset($context["S_SHOW_DRAFTS"]) ? $context["S_SHOW_DRAFTS"] : null) && ( !$this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SIG_EDIT", array()) == 1))) {
                // line 77
                echo "\t<div class=\"panel bg3\" id=\"options-panel\">
\t\t<div class=\"inner\">

\t\t<fieldset class=\"fields1\">
\t\t\t";
                // line 81
                // line 82
                echo "\t\t\t";
                if ((isset($context["S_BBCODE_ALLOWED"]) ? $context["S_BBCODE_ALLOWED"] : null)) {
                    // line 83
                    echo "\t\t\t\t<div><label for=\"disable_bbcode\"><input type=\"checkbox\" name=\"disable_bbcode\" id=\"disable_bbcode\"";
                    echo (isset($context["S_BBCODE_CHECKED"]) ? $context["S_BBCODE_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("DISABLE_BBCODE");
                    echo "</label></div>
\t\t\t";
                }
                // line 85
                echo "\t\t\t";
                if ((isset($context["S_SMILIES_ALLOWED"]) ? $context["S_SMILIES_ALLOWED"] : null)) {
                    // line 86
                    echo "\t\t\t\t<div><label for=\"disable_smilies\"><input type=\"checkbox\" name=\"disable_smilies\" id=\"disable_smilies\"";
                    echo (isset($context["S_SMILIES_CHECKED"]) ? $context["S_SMILIES_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("DISABLE_SMILIES");
                    echo "</label></div>
\t\t\t";
                }
                // line 88
                echo "\t\t\t";
                if ((isset($context["S_LINKS_ALLOWED"]) ? $context["S_LINKS_ALLOWED"] : null)) {
                    // line 89
                    echo "\t\t\t\t<!--<div><label for=\"disable_magic_url\"><input type=\"checkbox\" name=\"disable_magic_url\" id=\"disable_magic_url\"";
                    echo (isset($context["S_MAGIC_URL_CHECKED"]) ? $context["S_MAGIC_URL_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("DISABLE_MAGIC_URL");
                    echo "</label></div>-->
\t\t\t";
                }
                // line 91
                echo "\t\t\t";
                if ((isset($context["S_SIG_ALLOWED"]) ? $context["S_SIG_ALLOWED"] : null)) {
                    // line 92
                    echo "\t\t\t\t<!--<div><label for=\"attach_sig\"><input type=\"checkbox\" name=\"attach_sig\" id=\"attach_sig\"";
                    echo (isset($context["S_SIGNATURE_CHECKED"]) ? $context["S_SIGNATURE_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("ATTACH_SIG");
                    echo "</label></div>-->
\t\t\t";
                }
                // line 94
                echo "\t\t\t";
                if ((isset($context["S_NOTIFY_ALLOWED"]) ? $context["S_NOTIFY_ALLOWED"] : null)) {
                    // line 95
                    echo "\t\t\t\t<!--<div><label for=\"notify\"><input type=\"checkbox\" name=\"notify\" id=\"notify\"";
                    echo (isset($context["S_NOTIFY_CHECKED"]) ? $context["S_NOTIFY_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("NOTIFY_REPLY");
                    echo "</label></div>-->
\t\t\t";
                }
                // line 97
                echo "\t\t\t";
                if ((isset($context["S_LOCK_TOPIC_ALLOWED"]) ? $context["S_LOCK_TOPIC_ALLOWED"] : null)) {
                    // line 98
                    echo "\t\t\t\t<div><label for=\"lock_topic\"><input type=\"checkbox\" name=\"lock_topic\" id=\"lock_topic\"";
                    echo (isset($context["S_LOCK_TOPIC_CHECKED"]) ? $context["S_LOCK_TOPIC_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("LOCK_TOPIC");
                    echo "</label></div>
\t\t\t";
                }
                // line 100
                echo "\t\t\t";
                if ((isset($context["S_LOCK_POST_ALLOWED"]) ? $context["S_LOCK_POST_ALLOWED"] : null)) {
                    // line 101
                    echo "\t\t\t\t<div><label for=\"lock_post\"><input type=\"checkbox\" name=\"lock_post\" id=\"lock_post\"";
                    echo (isset($context["S_LOCK_POST_CHECKED"]) ? $context["S_LOCK_POST_CHECKED"] : null);
                    echo " /> ";
                    echo $this->env->getExtension('phpbb')->lang("LOCK_POST");
                    echo " [";
                    echo $this->env->getExtension('phpbb')->lang("LOCK_POST_EXPLAIN");
                    echo "]</label></div>
\t\t\t";
                }
                // line 103
                echo "
\t\t\t";
                // line 104
                if ((((isset($context["S_TYPE_TOGGLE"]) ? $context["S_TYPE_TOGGLE"] : null) || (isset($context["S_TOPIC_TYPE_ANNOUNCE"]) ? $context["S_TOPIC_TYPE_ANNOUNCE"] : null)) || (isset($context["S_TOPIC_TYPE_STICKY"]) ? $context["S_TOPIC_TYPE_STICKY"] : null))) {
                    // line 105
                    echo "\t\t\t<hr class=\"dashed\" />
\t\t\t";
                }
                // line 107
                echo "
\t\t\t";
                // line 108
                if ((isset($context["S_TYPE_TOGGLE"]) ? $context["S_TYPE_TOGGLE"] : null)) {
                    // line 109
                    echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"topic_type-0\">";
                    // line 110
                    if ((isset($context["S_EDIT_POST"]) ? $context["S_EDIT_POST"] : null)) {
                        echo $this->env->getExtension('phpbb')->lang("CHANGE_TOPIC_TO");
                    } else {
                        echo $this->env->getExtension('phpbb')->lang("POST_TOPIC_AS");
                    }
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</label></dt>
\t\t\t\t<dd>";
                    // line 111
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topic_type", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["topic_type"]) {
                        echo "<label for=\"topic_type-";
                        echo $this->getAttribute($context["topic_type"], "VALUE", array());
                        echo "\"><input type=\"radio\" name=\"topic_type\" id=\"topic_type-";
                        echo $this->getAttribute($context["topic_type"], "VALUE", array());
                        echo "\" value=\"";
                        echo $this->getAttribute($context["topic_type"], "VALUE", array());
                        echo "\"";
                        echo $this->getAttribute($context["topic_type"], "S_CHECKED", array());
                        echo " />";
                        echo $this->getAttribute($context["topic_type"], "L_TOPIC_TYPE", array());
                        echo "</label> ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topic_type'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    echo "</dd>
\t\t\t</dl>
\t\t\t";
                }
                // line 114
                echo "
\t\t\t";
                // line 115
                if (((isset($context["S_TOPIC_TYPE_ANNOUNCE"]) ? $context["S_TOPIC_TYPE_ANNOUNCE"] : null) || (isset($context["S_TOPIC_TYPE_STICKY"]) ? $context["S_TOPIC_TYPE_STICKY"] : null))) {
                    // line 116
                    echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"topic_time_limit\">";
                    // line 117
                    echo $this->env->getExtension('phpbb')->lang("STICK_TOPIC_FOR");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</label></dt>
\t\t\t\t<dd><label for=\"topic_time_limit\"><input type=\"number\" min=\"0\" max=\"999\" name=\"topic_time_limit\" id=\"topic_time_limit\" value=\"";
                    // line 118
                    echo (isset($context["TOPIC_TIME_LIMIT"]) ? $context["TOPIC_TIME_LIMIT"] : null);
                    echo "\" class=\"inputbox autowidth\" /> ";
                    echo $this->env->getExtension('phpbb')->lang("DAYS");
                    echo "</label></dd>
\t\t\t\t<dd>";
                    // line 119
                    echo $this->env->getExtension('phpbb')->lang("STICK_TOPIC_FOR_EXPLAIN");
                    echo "</dd>
\t\t\t</dl>
\t\t\t";
                }
                // line 122
                echo "


\t\t\t";
                // line 125
                if ((isset($context["S_EDIT_REASON"]) ? $context["S_EDIT_REASON"] : null)) {
                    // line 126
                    echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"edit_reason\">";
                    // line 127
                    echo $this->env->getExtension('phpbb')->lang("EDIT_REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</label></dt>
\t\t\t\t<dd><input type=\"text\" name=\"edit_reason\" id=\"edit_reason\" value=\"";
                    // line 128
                    echo (isset($context["EDIT_REASON"]) ? $context["EDIT_REASON"] : null);
                    echo "\" class=\"inputbox\" /></dd>
\t\t\t</dl>
\t\t\t";
                }
                // line 131
                echo "\t\t</fieldset>
\t\t";
            }
            // line 133
            echo "
";
        }
    }

    public function getTemplateName()
    {
        return "posting_editor.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  447 => 133,  443 => 131,  437 => 128,  432 => 127,  429 => 126,  427 => 125,  422 => 122,  416 => 119,  410 => 118,  405 => 117,  402 => 116,  400 => 115,  397 => 114,  374 => 111,  365 => 110,  362 => 109,  360 => 108,  357 => 107,  353 => 105,  351 => 104,  348 => 103,  338 => 101,  335 => 100,  327 => 98,  324 => 97,  316 => 95,  313 => 94,  305 => 92,  302 => 91,  294 => 89,  291 => 88,  283 => 86,  280 => 85,  272 => 83,  269 => 82,  268 => 81,  262 => 77,  260 => 76,  255 => 73,  244 => 66,  243 => 65,  239 => 64,  235 => 63,  230 => 60,  228 => 59,  225 => 58,  220 => 55,  218 => 54,  215 => 53,  213 => 52,  209 => 50,  208 => 49,  194 => 46,  190 => 44,  189 => 43,  185 => 41,  173 => 40,  170 => 39,  165 => 38,  162 => 37,  159 => 36,  156 => 35,  143 => 34,  139 => 33,  137 => 32,  133 => 30,  132 => 29,  120 => 28,  119 => 27,  113 => 25,  110 => 24,  108 => 23,  105 => 22,  104 => 21,  101 => 20,  95 => 17,  90 => 16,  87 => 15,  85 => 14,  82 => 13,  77 => 10,  50 => 9,  42 => 8,  36 => 6,  33 => 5,  31 => 4,  28 => 3,  22 => 2,  19 => 1,);
    }
}
/* <fieldset class="fields1">*/
/* 	<!-- IF ERROR --><p class="error">{ERROR}</p><!-- ENDIF -->*/
/* */
/* 	<!-- IF S_SHOW_TOPIC_ICONS or S_SHOW_PM_ICONS -->*/
/* 	<dl>*/
/* 		<dt><label for="icon">{L_ICON}{L_COLON}</label></dt>*/
/* 		<dd>*/
/* 			<label for="icon"><input type="radio" name="icon" id="icon" value="0" checked="checked" tabindex="1" /> <!-- IF S_SHOW_TOPIC_ICONS -->{L_NO_TOPIC_ICON}<!-- ELSE -->{L_NO_PM_ICON}<!-- ENDIF --></label>*/
/* 			<!-- BEGIN topic_icon --><label for="icon-{topic_icon.ICON_ID}"><input type="radio" name="icon" id="icon-{topic_icon.ICON_ID}" value="{topic_icon.ICON_ID}" {topic_icon.S_ICON_CHECKED} tabindex="1" /><img src="{topic_icon.ICON_IMG}" width="{topic_icon.ICON_WIDTH}" height="{topic_icon.ICON_HEIGHT}" alt="{topic_icon.ICON_ALT}" title="{topic_icon.ICON_ALT}" /></label> <!-- END topic_icon -->*/
/* 		</dd>*/
/* 	</dl>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF not S_PRIVMSGS and S_DISPLAY_USERNAME -->*/
/* 	<dl style="clear: left;">*/
/* 		<dt><label for="username">{L_USERNAME}{L_COLON}</label></dt>*/
/* 		<dd><input type="text" tabindex="1" name="username" id="username" size="25" value="{USERNAME}" class="inputbox autowidth" /></dd>*/
/* 	</dl>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- EVENT posting_editor_subject_before -->*/
/* */
/* 	<!-- IF S_POST_ACTION or S_PRIVMSGS or S_EDIT_DRAFT -->*/
/* 	<dl style="clear: left;">*/
/* 		<dt><label for="subject">{L_SUBJECT}{L_COLON}</label></dt>*/
/* 		<dd>*/
/* 			<!-- EVENT posting_editor_subject_prepend -->*/
/* 			<input type="text" name="subject" id="subject" size="120" maxlength="<!-- IF S_NEW_MESSAGE -->120<!-- ELSE -->124<!-- ENDIF -->" tabindex="2" value="{SUBJECT}{DRAFT_SUBJECT}" class="inputbox autowidth" />*/
/* 			<!-- EVENT posting_editor_subject_append -->*/
/* 		</dd>*/
/* 	</dl>*/
/* 	<!-- IF CAPTCHA_TEMPLATE and S_CONFIRM_CODE -->*/
/* 		<!-- DEFINE $CAPTCHA_TAB_INDEX = 3 -->*/
/* 		<!-- INCLUDE {CAPTCHA_TEMPLATE} -->*/
/* 	<!-- ENDIF -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- EVENT posting_editor_subject_after -->*/
/* */
/* 	<!-- INCLUDE posting_buttons.html -->*/
/*     <!-- remove line 42-72-->*/
/* */
/* 	<!-- EVENT posting_editor_message_before -->*/
/* */
/* 	<div id="message-box" class="message-box">*/
/* 		<textarea <!-- IF S_UCP_ACTION and not S_PRIVMSGS and not S_EDIT_DRAFT -->name="signature" id="signature" style="height: 9em;"<!-- ELSE -->name="message" id="message"<!-- ENDIF --> rows="15" cols="76" tabindex="4" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" onfocus="initInsertions();" class="inputbox">{MESSAGE}{DRAFT_MESSAGE}{SIGNATURE}</textarea>*/
/* 	</div>*/
/* */
/* 	<!-- EVENT posting_editor_message_after -->*/
/* 	</fieldset>*/
/* */
/* <!-- IF $EXTRA_POSTING_OPTIONS eq 1 -->*/
/* */
/* 	<!-- IF not S_SHOW_DRAFTS -->*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF not S_SHOW_DRAFTS and not $SIG_EDIT eq 1 -->*/
/* 	<div class="panel bg2">*/
/* 		<div class="inner">*/
/* 		<fieldset class="submit-buttons">*/
/* 			{S_HIDDEN_ADDRESS_FIELD}*/
/* 			{S_HIDDEN_FIELDS}*/
/* 			<!-- EVENT posting_editor_submit_buttons -->*/
/* 			<input type="submit" accesskey="s" tabindex="6" name="post" value="{L_SUBMIT}" class="button1 default-submit-action" />&nbsp;*/
/* */
/* 		</fieldset>*/
/* */
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- removed line 105- 124 to remove Options tab --> */
/* */
/* 	<!-- IF not S_SHOW_DRAFTS and not $SIG_EDIT eq 1 -->*/
/* 	<div class="panel bg3" id="options-panel">*/
/* 		<div class="inner">*/
/* */
/* 		<fieldset class="fields1">*/
/* 			<!-- EVENT posting_editor_options_prepend -->*/
/* 			<!-- IF S_BBCODE_ALLOWED -->*/
/* 				<div><label for="disable_bbcode"><input type="checkbox" name="disable_bbcode" id="disable_bbcode"{S_BBCODE_CHECKED} /> {L_DISABLE_BBCODE}</label></div>*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_SMILIES_ALLOWED -->*/
/* 				<div><label for="disable_smilies"><input type="checkbox" name="disable_smilies" id="disable_smilies"{S_SMILIES_CHECKED} /> {L_DISABLE_SMILIES}</label></div>*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_LINKS_ALLOWED -->*/
/* 				<!--<div><label for="disable_magic_url"><input type="checkbox" name="disable_magic_url" id="disable_magic_url"{S_MAGIC_URL_CHECKED} /> {L_DISABLE_MAGIC_URL}</label></div>-->*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_SIG_ALLOWED -->*/
/* 				<!--<div><label for="attach_sig"><input type="checkbox" name="attach_sig" id="attach_sig"{S_SIGNATURE_CHECKED} /> {L_ATTACH_SIG}</label></div>-->*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_NOTIFY_ALLOWED -->*/
/* 				<!--<div><label for="notify"><input type="checkbox" name="notify" id="notify"{S_NOTIFY_CHECKED} /> {L_NOTIFY_REPLY}</label></div>-->*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_LOCK_TOPIC_ALLOWED -->*/
/* 				<div><label for="lock_topic"><input type="checkbox" name="lock_topic" id="lock_topic"{S_LOCK_TOPIC_CHECKED} /> {L_LOCK_TOPIC}</label></div>*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF S_LOCK_POST_ALLOWED -->*/
/* 				<div><label for="lock_post"><input type="checkbox" name="lock_post" id="lock_post"{S_LOCK_POST_CHECKED} /> {L_LOCK_POST} [{L_LOCK_POST_EXPLAIN}]</label></div>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF S_TYPE_TOGGLE or S_TOPIC_TYPE_ANNOUNCE or S_TOPIC_TYPE_STICKY -->*/
/* 			<hr class="dashed" />*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF S_TYPE_TOGGLE -->*/
/* 			<dl>*/
/* 				<dt><label for="topic_type-0"><!-- IF S_EDIT_POST -->{L_CHANGE_TOPIC_TO}<!-- ELSE -->{L_POST_TOPIC_AS}<!-- ENDIF -->{L_COLON}</label></dt>*/
/* 				<dd><!-- BEGIN topic_type --><label for="topic_type-{topic_type.VALUE}"><input type="radio" name="topic_type" id="topic_type-{topic_type.VALUE}" value="{topic_type.VALUE}"{topic_type.S_CHECKED} />{topic_type.L_TOPIC_TYPE}</label> <!-- END topic_type --></dd>*/
/* 			</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF S_TOPIC_TYPE_ANNOUNCE or S_TOPIC_TYPE_STICKY -->*/
/* 			<dl>*/
/* 				<dt><label for="topic_time_limit">{L_STICK_TOPIC_FOR}{L_COLON}</label></dt>*/
/* 				<dd><label for="topic_time_limit"><input type="number" min="0" max="999" name="topic_time_limit" id="topic_time_limit" value="{TOPIC_TIME_LIMIT}" class="inputbox autowidth" /> {L_DAYS}</label></dd>*/
/* 				<dd>{L_STICK_TOPIC_FOR_EXPLAIN}</dd>*/
/* 			</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* */
/* */
/* 			<!-- IF S_EDIT_REASON -->*/
/* 			<dl>*/
/* 				<dt><label for="edit_reason">{L_EDIT_REASON}{L_COLON}</label></dt>*/
/* 				<dd><input type="text" name="edit_reason" id="edit_reason" value="{EDIT_REASON}" class="inputbox" /></dd>*/
/* 			</dl>*/
/* 			<!-- ENDIF -->*/
/* 		</fieldset>*/
/* 		<!-- ENDIF -->*/
/* */
/* <!-- ENDIF -->*/
/* */
