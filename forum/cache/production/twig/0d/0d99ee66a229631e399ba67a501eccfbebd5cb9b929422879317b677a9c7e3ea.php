<?php

/* viewtopic_body.html */
class __TwigTemplate_82ac9d7183950ab94fe8bbb748ca16ac208106576a24368f8030756580ffcaed extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "viewtopic_body.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
&nbsp;<p class=\"advanced-search-link\">";
        // line 3
        echo "<a href=\"";
        echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
        echo "\">< Back to \"CAT Forum\"</a>";
        echo "</p>

";
        // line 5
        // line 6
        echo "<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the topic body -->
";
        // line 7
        if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
            echo "<div style=\"display: none !important;\">";
            echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
            echo "<br /></div>";
        }
        // line 8
        echo "
";
        // line 9
        if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
            // line 10
            echo "<p>
\t<strong>";
            // line 11
            if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATOR");
            } else {
                echo $this->env->getExtension('phpbb')->lang("MODERATORS");
            }
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong> ";
            echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
            echo "
</p>
";
        }
        // line 14
        echo "
";
        // line 15
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 16
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 19
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 20
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 22
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 23
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 25
            echo "
\t\t</div>
\t</div>
";
        }
        // line 29
        echo "
<div class=\"action-bar bar-top\">
\t";
        // line 31
        // line 32
        echo "
    <!-- remove post reply button line 33-42-->

\t";
        // line 35
        // line 36
        echo "\t";
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 36)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 37
        echo "\t";
        // line 38
        echo "
\t";
        // line 39
        if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
            // line 40
            echo "\t<!-- **** remove line50 - 63 -->
\t";
        }
        // line 42
        echo "
\t";
        // line 43
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 44
            echo "\t<!--\t<div class=\"pagination\"> -->
\t\t\t";
            // line 45
            if (((isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<!--<a href=\"";
                echo (isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null);
                echo "\" class=\"mark\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_UNREAD_POST");
                echo "</a> &bull; ";
            }
            echo "<!--";
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "-->
\t\t\t";
            // line 46
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 47
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 47)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 48
                echo "\t\t\t";
            } else {
                // line 49
                echo "\t\t\t<!--\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo " -->
\t\t\t";
            }
            // line 51
            echo "\t\t<!--</div>-->
\t";
        }
        // line 53
        echo "\t";
        // line 54
        echo "</div>

";
        // line 56
        // line 57
        echo "
";
        // line 58
        if ((isset($context["S_HAS_POLL"]) ? $context["S_HAS_POLL"] : null)) {
            // line 59
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_POLL_ACTION"]) ? $context["S_POLL_ACTION"] : null);
            echo "\" data-ajax=\"vote_poll\" class=\"topic_poll\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<div class=\"content\">
\t\t\t<h2 class=\"poll-title\">";
            // line 65
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t\t<p class=\"author\">";
            // line 66
            echo $this->env->getExtension('phpbb')->lang("POLL_LENGTH");
            if (((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null) && (isset($context["L_POLL_LENGTH"]) ? $context["L_POLL_LENGTH"] : null))) {
                echo "<br />";
            }
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                echo "<span class=\"poll_max_votes\">";
                echo $this->env->getExtension('phpbb')->lang("MAX_VOTES");
                echo "</span>";
            }
            echo "</p>

\t\t\t<fieldset class=\"polls\">
\t\t\t";
            // line 69
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 70
                echo "\t\t\t\t";
                // line 71
                echo "\t\t\t\t<dl class=\"";
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                    echo "voted";
                }
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_MOST_VOTES", array())) {
                    echo " most-votes";
                }
                echo "\"";
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                    echo " title=\"";
                    echo $this->env->getExtension('phpbb')->lang("POLL_VOTED_OPTION");
                    echo "\"";
                }
                echo " data-alt-text=\"";
                echo $this->env->getExtension('phpbb')->lang("POLL_VOTED_OPTION");
                echo "\" data-poll-option-id=\"";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                echo "\">
\t\t\t\t\t<dt>";
                // line 72
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<label for=\"vote_";
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                    echo "\">";
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_CAPTION", array());
                    echo "</label>";
                } else {
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_CAPTION", array());
                }
                echo "</dt>
\t\t\t\t\t";
                // line 73
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<dd style=\"width: auto;\" class=\"poll_option_select\">";
                    if ((isset($context["S_IS_MULTI_CHOICE"]) ? $context["S_IS_MULTI_CHOICE"] : null)) {
                        echo "<input type=\"checkbox\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\" value=\"";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\"";
                        if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    } else {
                        echo "<input type=\"radio\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\" value=\"";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\"";
                        if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    }
                    echo "</dd>";
                }
                // line 74
                echo "\t\t\t\t\t<dd class=\"resultbar";
                if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                    echo " hidden";
                }
                echo "\"><div class=\"";
                if (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 20)) {
                    echo "pollbar1";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 40)) {
                    echo "pollbar2";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 60)) {
                    echo "pollbar3";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 80)) {
                    echo "pollbar4";
                } else {
                    echo "pollbar5";
                }
                echo "\" style=\"width:";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_PERCENT_REL", array());
                echo ";\">";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_RESULT", array());
                echo "</div></dd>
\t\t\t\t\t<dd class=\"poll_option_percent";
                // line 75
                if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                    echo " hidden";
                }
                echo "\">";
                if (($this->getAttribute($context["poll_option"], "POLL_OPTION_RESULT", array()) == 0)) {
                    echo $this->env->getExtension('phpbb')->lang("NO_VOTES");
                } else {
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_PERCENT", array());
                }
                echo "</dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 77
                // line 78
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 79
            echo "
\t\t\t\t<dl class=\"poll_total_votes";
            // line 80
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                echo " hidden";
            }
            echo "\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\">";
            // line 82
            echo $this->env->getExtension('phpbb')->lang("TOTAL_VOTES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <span class=\"poll_total_vote_cnt\">";
            echo (isset($context["TOTAL_VOTES"]) ? $context["TOTAL_VOTES"] : null);
            echo "</span></dd>
\t\t\t\t</dl>

\t\t\t";
            // line 85
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                // line 86
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_vote\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><input type=\"submit\" name=\"update\" value=\"";
                // line 88
                echo $this->env->getExtension('phpbb')->lang("SUBMIT_VOTE");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 91
            echo "
\t\t\t";
            // line 92
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                // line 93
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_view_results\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><a href=\"";
                // line 95
                echo (isset($context["U_VIEW_RESULTS"]) ? $context["U_VIEW_RESULTS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_RESULTS");
                echo "</a></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 98
            echo "\t\t\t</fieldset>
\t\t\t<div class=\"vote-submitted hidden\">";
            // line 99
            echo $this->env->getExtension('phpbb')->lang("VOTE_SUBMITTED");
            echo "</div>
\t\t</div>

\t\t</div>
\t\t";
            // line 103
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t\t";
            // line 104
            echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
            echo "
\t</div>

\t</form>
\t<hr />
";
        }
        // line 110
        echo "
";
        // line 111
        // line 112
        echo "
";
        // line 113
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
            // line 114
            echo "\t";
            // line 115
            echo "\t";
            if ($this->getAttribute($context["postrow"], "S_FIRST_UNREAD", array())) {
                // line 116
                echo "\t\t<a id=\"unread\" class=\"anchor\"";
                if ((isset($context["S_UNREAD_VIEW"]) ? $context["S_UNREAD_VIEW"] : null)) {
                    echo " data-url=\"";
                    echo $this->getAttribute($context["postrow"], "U_MINI_POST", array());
                    echo "\"";
                }
                echo "></a>
\t";
            }
            // line 118
            echo "\t<div id=\"p";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\" class=\"post has-profile ";
            if (($this->getAttribute($context["postrow"], "S_ROW_COUNT", array()) % 2 == 1)) {
                echo "bg1";
            } else {
                echo "bg2";
            }
            if ($this->getAttribute($context["postrow"], "S_UNREAD_POST", array())) {
                echo " unreadpost";
            }
            if (($this->getAttribute($context["postrow"], "S_POST_REPORTED", array()) || $this->getAttribute($context["postrow"], "S_POST_UNAPPROVED", array()))) {
                echo " reported";
            }
            if ($this->getAttribute($context["postrow"], "S_POST_DELETED", array())) {
                echo " deleted";
            }
            if (($this->getAttribute($context["postrow"], "S_ONLINE", array()) &&  !$this->getAttribute($context["postrow"], "S_POST_HIDDEN", array()))) {
                echo " online";
            }
            if ((( !$this->getAttribute($context["postrow"], "S_ONLINE", array()) &&  !$this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) && $this->getAttribute($context["postrow"], "ONLINE_IMG", array()))) {
                echo " offline";
            }
            if ($this->getAttribute($context["postrow"], "POSTER_WARNINGS", array())) {
                echo " warned";
            }
            echo "\">
\t\t<div class=\"inner\">



\t\t<div class=\"postbody\">
\t\t\t";
            // line 124
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                // line 125
                echo "\t\t\t\t";
                if ($this->getAttribute($context["postrow"], "S_POST_DELETED", array())) {
                    // line 126
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 127
                    echo $this->getAttribute($context["postrow"], "L_POST_DELETED_MESSAGE", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 128
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                } elseif ($this->getAttribute(                // line 130
$context["postrow"], "S_IGNORE_POST", array())) {
                    // line 131
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 132
                    echo $this->getAttribute($context["postrow"], "L_IGNORE_POST", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 133
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                }
                // line 136
                echo "\t\t\t";
            }
            // line 137
            echo "\t\t\t<div id=\"post_content";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"";
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                echo " style=\"display: none;\"";
            }
            echo ">

\t\t\t";
            // line 139
            // line 140
            echo "\t\t\t<h3 ";
            if ($this->getAttribute($context["postrow"], "S_FIRST_ROW", array())) {
                echo "class=\"first\"";
            }
            echo ">";
            if ($this->getAttribute($context["postrow"], "POST_ICON_IMG", array())) {
                echo "<img src=\"";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG", array());
                echo "\" width=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_WIDTH", array());
                echo "\" height=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_HEIGHT", array());
                echo "\" alt=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_ALT", array());
                echo "\" title=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_ALT", array());
                echo "\" /> ";
            }
            echo "<a href=\"#p";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\">";
            echo $this->getAttribute($context["postrow"], "POST_SUBJECT", array());
            echo "</a></h3>

\t\t";
            // line 142
            $value = ((((($this->getAttribute($context["postrow"], "U_EDIT", array()) || $this->getAttribute($context["postrow"], "U_DELETE", array())) || $this->getAttribute($context["postrow"], "U_REPORT", array())) || $this->getAttribute($context["postrow"], "U_WARN", array())) || $this->getAttribute($context["postrow"], "U_INFO", array())) || $this->getAttribute($context["postrow"], "U_QUOTE", array()));
            $context['definition']->set('SHOW_POST_BUTTONS', $value);
            // line 143
            echo "\t\t";
            // line 144
            echo "\t\t";
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 145
                echo "\t\t\t";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SHOW_POST_BUTTONS", array())) {
                    // line 146
                    echo "\t\t\t\t<ul class=\"post-buttons\">
\t\t\t\t\t";
                    // line 147
                    // line 148
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_EDIT", array())) {
                        // line 149
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 150
                        echo $this->getAttribute($context["postrow"], "U_EDIT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("EDIT_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-pencil fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 151
                        echo $this->env->getExtension('phpbb')->lang("BUTTON_EDIT");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>-->
\t\t\t\t\t";
                    }
                    // line 155
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_DELETE", array())) {
                        // line 156
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 157
                        echo $this->getAttribute($context["postrow"], "U_DELETE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-times fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 158
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>-->
\t\t\t\t\t";
                    }
                    // line 162
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_REPORT", array())) {
                        // line 163
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 164
                        echo $this->getAttribute($context["postrow"], "U_REPORT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 165
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>-->
\t\t\t\t\t";
                    }
                    // line 169
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_WARN", array())) {
                        // line 170
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 171
                        echo $this->getAttribute($context["postrow"], "U_WARN", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation-triangle fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 172
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>-->
\t\t\t\t\t";
                    }
                    // line 176
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_INFO", array())) {
                        // line 177
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 178
                        echo $this->getAttribute($context["postrow"], "U_INFO", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-info fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 179
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li> -->
\t\t\t\t\t";
                    }
                    // line 183
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_QUOTE", array())) {
                        // line 184
                        echo "\t\t\t\t\t<!--\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 185
                        echo $this->getAttribute($context["postrow"], "U_QUOTE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPLY_WITH_QUOTE");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-quote-left fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 186
                        echo $this->env->getExtension('phpbb')->lang("QUOTE");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>-->
\t\t\t\t\t";
                    }
                    // line 190
                    echo "\t\t\t\t\t";
                    // line 191
                    echo "\t\t\t\t</ul>
\t\t\t";
                }
                // line 193
                echo "\t\t";
            }
            // line 194
            echo "\t\t";
            // line 195
            echo "
\t\t\t";
            // line 196
            // line 197
            echo "\t\t\t<p class=\"author\">
\t\t\t\t";
            // line 198
            if ((isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 199
                echo "\t\t\t\t\t<span><i class=\"icon fa-file fa-fw ";
                if ($this->getAttribute($context["postrow"], "S_UNREAD_POST", array())) {
                    echo "icon-red";
                } else {
                    echo "icon-lightgray";
                }
                echo " icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                echo $this->getAttribute($context["postrow"], "MINI_POST", array());
                echo "</span></span>
\t\t\t\t";
            } else {
                // line 201
                echo "\t\t\t\t\t<a class=\"unread\" href=\"";
                echo $this->getAttribute($context["postrow"], "U_MINI_POST", array());
                echo "\" title=\"";
                echo $this->getAttribute($context["postrow"], "MINI_POST", array());
                echo "\">
\t\t\t\t\t\t<i class=\"icon fa-file fa-fw ";
                // line 202
                if ($this->getAttribute($context["postrow"], "S_UNREAD_POST", array())) {
                    echo "icon-red";
                } else {
                    echo "icon-lightgray";
                }
                echo " icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                echo $this->getAttribute($context["postrow"], "MINI_POST", array());
                echo "</span>
\t\t\t\t\t</a>
\t\t\t\t";
            }
            // line 205
            echo "\t\t\t\t<span class=\"responsive-hide\">";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " <strong>";
            echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
            echo "</strong> &raquo; </span>";
            echo $this->getAttribute($context["postrow"], "POST_DATE", array());
            echo "
\t\t\t</p>
\t\t\t";
            // line 207
            // line 208
            echo "
\t\t\t";
            // line 209
            if ($this->getAttribute($context["postrow"], "S_POST_UNAPPROVED", array())) {
                // line 210
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<span><i class=\"icon fa-question icon-red fa-fw\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t<strong>";
                // line 213
                echo $this->env->getExtension('phpbb')->lang("POST_UNAPPROVED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 214
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 215
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" name=\"action[approve]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 216
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 217
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            } elseif ($this->getAttribute(            // line 220
$context["postrow"], "S_POST_DELETED", array())) {
                // line 221
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice deleted\">
\t\t\t\t\t<strong>";
                // line 223
                echo $this->env->getExtension('phpbb')->lang("POST_DELETED_ACTION");
                echo "</strong>
\t\t\t\t\t";
                // line 224
                if ($this->getAttribute($context["postrow"], "S_DELETE_PERMANENT", array())) {
                    // line 225
                    echo "\t\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                    echo $this->env->getExtension('phpbb')->lang("DELETE");
                    echo "\" name=\"action[delete]\" />
\t\t\t\t\t";
                }
                // line 227
                echo "\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("RESTORE");
                echo "\" name=\"action[restore]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 228
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 229
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            }
            // line 233
            echo "
\t\t\t";
            // line 234
            if ($this->getAttribute($context["postrow"], "S_POST_REPORTED", array())) {
                // line 235
                echo "\t\t\t<p class=\"post-notice reported\">
\t\t\t\t<a href=\"";
                // line 236
                echo $this->getAttribute($context["postrow"], "U_MCP_REPORT", array());
                echo "\"><i class=\"icon fa-exclamation fa-fw icon-red\" aria-hidden=\"true\"></i><strong>";
                echo $this->env->getExtension('phpbb')->lang("POST_REPORTED");
                echo "</strong></a>
\t\t\t</p>
\t\t\t";
            }
            // line 239
            echo "
\t\t\t<div class=\"content\">";
            // line 240
            echo $this->getAttribute($context["postrow"], "MESSAGE", array());
            echo "</div>

\t\t\t";
            // line 242
            if ($this->getAttribute($context["postrow"], "S_HAS_ATTACHMENTS", array())) {
                // line 243
                echo "\t\t\t\t<dl class=\"attachbox\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t";
                // line 245
                echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
                echo "
\t\t\t\t\t</dt>
\t\t\t\t\t";
                // line 247
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "attachment", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                    // line 248
                    echo "\t\t\t\t\t\t<dd>";
                    echo $this->getAttribute($context["attachment"], "DISPLAY_ATTACHMENT", array());
                    echo "</dd>
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 250
                echo "\t\t\t\t</dl>
\t\t\t";
            }
            // line 252
            echo "
\t\t\t";
            // line 253
            // line 254
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "S_DISPLAY_NOTICE", array())) {
                echo "<div class=\"rules\">";
                echo $this->env->getExtension('phpbb')->lang("DOWNLOAD_NOTICE");
                echo "</div>";
            }
            // line 255
            echo "\t\t\t";
            if (($this->getAttribute($context["postrow"], "DELETED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "DELETE_REASON", array()))) {
                // line 256
                echo "\t\t\t\t<div class=\"notice post_deleted_msg\">
\t\t\t\t\t";
                // line 257
                echo $this->getAttribute($context["postrow"], "DELETED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 258
                if ($this->getAttribute($context["postrow"], "DELETE_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "DELETE_REASON", array());
                    echo "</em>";
                }
                // line 259
                echo "\t\t\t\t</div>
\t\t\t";
            } elseif (($this->getAttribute(            // line 260
$context["postrow"], "EDITED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "EDIT_REASON", array()))) {
                // line 261
                echo "\t\t\t\t<div class=\"notice\">
\t\t\t\t\t";
                // line 262
                echo $this->getAttribute($context["postrow"], "EDITED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 263
                if ($this->getAttribute($context["postrow"], "EDIT_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "EDIT_REASON", array());
                    echo "</em>";
                }
                // line 264
                echo "\t\t\t\t</div>
\t\t\t";
            }
            // line 266
            echo "
\t\t\t";
            // line 267
            if ($this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array())) {
                echo "<div class=\"notice\"><br /><br />";
                echo $this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array());
                echo "</div>";
            }
            // line 268
            echo "\t\t\t";
            // line 269
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "SIGNATURE", array())) {
                echo "<div id=\"sig";
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" class=\"signature\">";
                echo $this->getAttribute($context["postrow"], "SIGNATURE", array());
                echo "</div>";
            }
            // line 270
            echo "
\t\t\t";
            // line 271
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array('robertheim_topictags', '__main__'));
            $this->env->loadTemplate('@robertheim_topictags/event/viewtopic_body_postrow_post_content_footer.html')->display($context);
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            // line 272
            echo "\t\t\t</div>

\t\t</div>

\t\t";
            // line 276
            // line 277
            echo "\t\t<div class=\"back2top\">
\t\t\t";
            // line 278
            // line 279
            echo "\t\t\t<a href=\"#top\" class=\"top\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "\">
\t\t\t\t<i class=\"icon fa-chevron-circle-up fa-fw icon-gray\" aria-hidden=\"true\"></i>
\t\t\t\t<span class=\"sr-only\">";
            // line 281
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "</span>
\t\t\t</a>
\t\t\t";
            // line 283
            // line 284
            echo "\t\t</div>
\t\t";
            // line 285
            // line 286
            echo "
\t\t</div>
\t</div>

\t<hr class=\"divider\" />
\t";
            // line 291
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 293
        echo "
";
        // line 294
        if ((isset($context["S_QUICK_REPLY"]) ? $context["S_QUICK_REPLY"] : null)) {
            // line 295
            echo "\t";
            $location = "quickreply_editor.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("quickreply_editor.html", "viewtopic_body.html", 295)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 297
        echo "
";
        // line 298
        // line 299
        echo "\t<div class=\"action-bar bar-bottom\">
\t";
        // line 300
        // line 301
        echo "
<!-- line 377- 385 remove post reply button -->
\t";
        // line 303
        // line 304
        echo "
\t";
        // line 305
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 305)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 306
        echo "
\t";
        // line 307
        if (((((isset($context["S_NUM_POSTS"]) ? $context["S_NUM_POSTS"] : null) > 1) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
            // line 308
            echo "
\t";
        }
        // line 310
        echo "
\t";
        // line 311
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()))) {
            // line 312
            echo "\t<div class=\"quickmod dropdown-container dropdown-container-left dropdown-up dropdown-";
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            echo " dropdown-button-control\" id=\"quickmod\">
\t\t<span title=\"";
            // line 313
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "\" class=\"button button-secondary dropdown-trigger dropdown-select\">
\t\t\t<i class=\"icon fa-gavel fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 314
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "</span>
\t\t\t<span class=\"caret\"><i class=\"icon fa-sort-down fa-fw\" aria-hidden=\"true\"></i></span>
\t\t</span>
\t\t<div class=\"dropdown\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 320
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["quickmod"]) {
                // line 321
                echo "\t\t\t\t\t";
                $value = twig_in_filter($this->getAttribute($context["quickmod"], "VALUE", array()), array(0 => "lock", 1 => "unlock", 2 => "delete_topic", 3 => "restore_topic", 4 => "make_normal", 5 => "make_sticky", 6 => "make_announce", 7 => "make_global"));
                $context['definition']->set('QUICKMOD_AJAX', $value);
                // line 322
                echo "\t\t\t\t\t<li><a href=\"";
                echo $this->getAttribute($context["quickmod"], "LINK", array());
                echo "\"";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "QUICKMOD_AJAX", array())) {
                    echo " data-ajax=\"true\" data-refresh=\"true\"";
                }
                echo ">";
                echo $this->getAttribute($context["quickmod"], "TITLE", array());
                echo "</a></li>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['quickmod'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 324
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 328
        echo "
\t";
        // line 329
        // line 330
        echo "
\t";
        // line 331
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 332
            echo "\t<!--\t<div class=\"pagination\">
\t\t\t";
            // line 333
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 334
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 335
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 335)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 336
                echo "\t\t\t";
            } else {
                // line 337
                echo "\t\t\t<!--\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 339
            echo "\t<!--\t</div>-->
\t";
        }
        // line 341
        echo "</div>

";
        // line 343
        // line 344
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewtopic_body.html", 344)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 345
        echo "
";
        // line 346
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 347
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 348
            if ((isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null)) {
                echo "<a href=\"";
                echo (isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
                echo "</a>";
            } else {
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
            }
            echo "</h3>
\t\t<p>";
            // line 349
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 352
        echo "
";
        // line 353
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewtopic_body.html", 353)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewtopic_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1183 => 353,  1180 => 352,  1174 => 349,  1162 => 348,  1159 => 347,  1157 => 346,  1154 => 345,  1142 => 344,  1141 => 343,  1137 => 341,  1133 => 339,  1127 => 337,  1124 => 336,  1111 => 335,  1109 => 334,  1105 => 333,  1102 => 332,  1100 => 331,  1097 => 330,  1096 => 329,  1093 => 328,  1087 => 324,  1072 => 322,  1068 => 321,  1064 => 320,  1055 => 314,  1051 => 313,  1046 => 312,  1044 => 311,  1041 => 310,  1037 => 308,  1035 => 307,  1032 => 306,  1020 => 305,  1017 => 304,  1016 => 303,  1012 => 301,  1011 => 300,  1008 => 299,  1007 => 298,  1004 => 297,  990 => 295,  988 => 294,  985 => 293,  980 => 291,  973 => 286,  972 => 285,  969 => 284,  968 => 283,  963 => 281,  957 => 279,  956 => 278,  953 => 277,  952 => 276,  946 => 272,  941 => 271,  938 => 270,  929 => 269,  927 => 268,  921 => 267,  918 => 266,  914 => 264,  905 => 263,  901 => 262,  898 => 261,  896 => 260,  893 => 259,  884 => 258,  880 => 257,  877 => 256,  874 => 255,  867 => 254,  866 => 253,  863 => 252,  859 => 250,  850 => 248,  846 => 247,  841 => 245,  837 => 243,  835 => 242,  830 => 240,  827 => 239,  819 => 236,  816 => 235,  814 => 234,  811 => 233,  804 => 229,  800 => 228,  795 => 227,  789 => 225,  787 => 224,  783 => 223,  777 => 221,  775 => 220,  769 => 217,  765 => 216,  761 => 215,  757 => 214,  753 => 213,  746 => 210,  744 => 209,  741 => 208,  740 => 207,  730 => 205,  718 => 202,  711 => 201,  699 => 199,  697 => 198,  694 => 197,  693 => 196,  690 => 195,  688 => 194,  685 => 193,  681 => 191,  679 => 190,  672 => 186,  666 => 185,  663 => 184,  660 => 183,  653 => 179,  647 => 178,  644 => 177,  641 => 176,  634 => 172,  628 => 171,  625 => 170,  622 => 169,  615 => 165,  609 => 164,  606 => 163,  603 => 162,  596 => 158,  590 => 157,  587 => 156,  584 => 155,  577 => 151,  571 => 150,  568 => 149,  565 => 148,  564 => 147,  561 => 146,  558 => 145,  555 => 144,  553 => 143,  550 => 142,  523 => 140,  522 => 139,  512 => 137,  509 => 136,  503 => 133,  499 => 132,  494 => 131,  492 => 130,  487 => 128,  483 => 127,  478 => 126,  475 => 125,  473 => 124,  439 => 118,  429 => 116,  426 => 115,  424 => 114,  420 => 113,  417 => 112,  416 => 111,  413 => 110,  404 => 104,  400 => 103,  393 => 99,  390 => 98,  382 => 95,  378 => 93,  376 => 92,  373 => 91,  367 => 88,  363 => 86,  361 => 85,  352 => 82,  345 => 80,  342 => 79,  336 => 78,  335 => 77,  322 => 75,  299 => 74,  273 => 73,  261 => 72,  241 => 71,  239 => 70,  235 => 69,  221 => 66,  217 => 65,  207 => 59,  205 => 58,  202 => 57,  201 => 56,  197 => 54,  195 => 53,  191 => 51,  185 => 49,  182 => 48,  169 => 47,  167 => 46,  155 => 45,  152 => 44,  150 => 43,  147 => 42,  143 => 40,  141 => 39,  138 => 38,  136 => 37,  123 => 36,  122 => 35,  117 => 32,  116 => 31,  112 => 29,  106 => 25,  101 => 23,  96 => 22,  88 => 20,  86 => 19,  77 => 16,  75 => 15,  72 => 14,  59 => 11,  56 => 10,  54 => 9,  51 => 8,  45 => 7,  42 => 6,  41 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* &nbsp;<p class="advanced-search-link"><!-- EVENT viewforum_forum_name_prepend --><a href="{U_VIEW_FORUM}">< Back to "CAT Forum"</a><!-- EVENT viewforum_forum_name_append --></p>*/
/* */
/* <!-- EVENT viewtopic_topic_title_after -->*/
/* <!-- NOTE: remove the style="display: none" when you want to have the forum description on the topic body -->*/
/* <!-- IF FORUM_DESC --><div style="display: none !important;">{FORUM_DESC}<br /></div><!-- ENDIF -->*/
/* */
/* <!-- IF MODERATORS -->*/
/* <p>*/
/* 	<strong><!-- IF S_SINGLE_MODERATOR -->{L_MODERATOR}<!-- ELSE -->{L_MODERATORS}<!-- ENDIF -->{L_COLON}</strong> {MODERATORS}*/
/* </p>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_FORUM_RULES -->*/
/* 	<div class="rules<!-- IF U_FORUM_RULES --> rules-link<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* */
/* 		<!-- IF U_FORUM_RULES -->*/
/* 			<a href="{U_FORUM_RULES}">{L_FORUM_RULES}</a>*/
/* 		<!-- ELSE -->*/
/* 			<strong>{L_FORUM_RULES}</strong><br />*/
/* 			{FORUM_RULES}*/
/* 		<!-- ENDIF -->*/
/* */
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <div class="action-bar bar-top">*/
/* 	<!-- EVENT viewtopic_buttons_top_before -->*/
/* */
/*     <!-- remove post reply button line 33-42-->*/
/* */
/* 	<!-- EVENT viewtopic_buttons_top_after -->*/
/* 	<!-- INCLUDE viewtopic_topic_tools.html -->*/
/* 	<!-- EVENT viewtopic_dropdown_top_custom -->*/
/* */
/* 	<!-- IF S_DISPLAY_SEARCHBOX -->*/
/* 	<!-- **** remove line50 - 63 -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF .pagination or TOTAL_POSTS -->*/
/* 	<!--	<div class="pagination"> -->*/
/* 			<!-- IF U_VIEW_UNREAD_POST and not S_IS_BOT --><!--<a href="{U_VIEW_UNREAD_POST}" class="mark">{L_VIEW_UNREAD_POST}</a> &bull; <!-- ENDIF --><!--{TOTAL_POSTS}-->*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 			<!--	&bull; {PAGE_NUMBER} -->*/
/* 			<!-- ENDIF -->*/
/* 		<!--</div>-->*/
/* 	<!-- ENDIF -->*/
/* 	<!-- EVENT viewtopic_body_pagination_top_after -->*/
/* </div>*/
/* */
/* <!-- EVENT viewtopic_body_poll_before -->*/
/* */
/* <!-- IF S_HAS_POLL -->*/
/* 	<form method="post" action="{S_POLL_ACTION}" data-ajax="vote_poll" class="topic_poll">*/
/* */
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<div class="content">*/
/* 			<h2 class="poll-title"><!-- EVENT viewtopic_body_poll_question_prepend -->{POLL_QUESTION}<!-- EVENT viewtopic_body_poll_question_append --></h2>*/
/* 			<p class="author">{L_POLL_LENGTH}<!-- IF S_CAN_VOTE and L_POLL_LENGTH --><br /><!-- ENDIF --><!-- IF S_CAN_VOTE --><span class="poll_max_votes">{L_MAX_VOTES}</span><!-- ENDIF --></p>*/
/* */
/* 			<fieldset class="polls">*/
/* 			<!-- BEGIN poll_option -->*/
/* 				<!-- EVENT viewtopic_body_poll_option_before -->*/
/* 				<dl class="<!-- IF poll_option.POLL_OPTION_VOTED -->voted<!-- ENDIF --><!-- IF poll_option.POLL_OPTION_MOST_VOTES --> most-votes<!-- ENDIF -->"<!-- IF poll_option.POLL_OPTION_VOTED --> title="{L_POLL_VOTED_OPTION}"<!-- ENDIF --> data-alt-text="{L_POLL_VOTED_OPTION}" data-poll-option-id="{poll_option.POLL_OPTION_ID}">*/
/* 					<dt><!-- IF S_CAN_VOTE --><label for="vote_{poll_option.POLL_OPTION_ID}">{poll_option.POLL_OPTION_CAPTION}</label><!-- ELSE -->{poll_option.POLL_OPTION_CAPTION}<!-- ENDIF --></dt>*/
/* 					<!-- IF S_CAN_VOTE --><dd style="width: auto;" class="poll_option_select"><!-- IF S_IS_MULTI_CHOICE --><input type="checkbox" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ELSE --><input type="radio" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ENDIF --></dd><!-- ENDIF -->*/
/* 					<dd class="resultbar<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->"><div class="<!-- IF poll_option.POLL_OPTION_PCT < 20 -->pollbar1<!-- ELSEIF poll_option.POLL_OPTION_PCT < 40 -->pollbar2<!-- ELSEIF poll_option.POLL_OPTION_PCT < 60 -->pollbar3<!-- ELSEIF poll_option.POLL_OPTION_PCT < 80 -->pollbar4<!-- ELSE -->pollbar5<!-- ENDIF -->" style="width:{poll_option.POLL_OPTION_PERCENT_REL};">{poll_option.POLL_OPTION_RESULT}</div></dd>*/
/* 					<dd class="poll_option_percent<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->"><!-- IF poll_option.POLL_OPTION_RESULT == 0 -->{L_NO_VOTES}<!-- ELSE -->{poll_option.POLL_OPTION_PERCENT}<!-- ENDIF --></dd>*/
/* 				</dl>*/
/* 				<!-- EVENT viewtopic_body_poll_option_after -->*/
/* 			<!-- END poll_option -->*/
/* */
/* 				<dl class="poll_total_votes<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar">{L_TOTAL_VOTES}{L_COLON} <span class="poll_total_vote_cnt">{TOTAL_VOTES}</span></dd>*/
/* 				</dl>*/
/* */
/* 			<!-- IF S_CAN_VOTE -->*/
/* 				<dl style="border-top: none;" class="poll_vote">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar"><input type="submit" name="update" value="{L_SUBMIT_VOTE}" class="button1" /></dd>*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF not S_DISPLAY_RESULTS -->*/
/* 				<dl style="border-top: none;" class="poll_view_results">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar"><a href="{U_VIEW_RESULTS}">{L_VIEW_RESULTS}</a></dd>*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* 			</fieldset>*/
/* 			<div class="vote-submitted hidden">{L_VOTE_SUBMITTED}</div>*/
/* 		</div>*/
/* */
/* 		</div>*/
/* 		{S_FORM_TOKEN}*/
/* 		{S_HIDDEN_FIELDS}*/
/* 	</div>*/
/* */
/* 	</form>*/
/* 	<hr />*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewtopic_body_poll_after -->*/
/* */
/* <!-- BEGIN postrow -->*/
/* 	<!-- EVENT viewtopic_body_postrow_post_before -->*/
/* 	<!-- IF postrow.S_FIRST_UNREAD -->*/
/* 		<a id="unread" class="anchor"<!-- IF S_UNREAD_VIEW --> data-url="{postrow.U_MINI_POST}"<!-- ENDIF -->></a>*/
/* 	<!-- ENDIF -->*/
/* 	<div id="p{postrow.POST_ID}" class="post has-profile <!-- IF postrow.S_ROW_COUNT is odd -->bg1<!-- ELSE -->bg2<!-- ENDIF --><!-- IF postrow.S_UNREAD_POST --> unreadpost<!-- ENDIF --><!-- IF postrow.S_POST_REPORTED or postrow.S_POST_UNAPPROVED --> reported<!-- ENDIF --><!-- IF postrow.S_POST_DELETED --> deleted<!-- ENDIF --><!-- IF postrow.S_ONLINE and not postrow.S_POST_HIDDEN --> online<!-- ENDIF --><!-- IF not postrow.S_ONLINE and not postrow.S_POST_HIDDEN and postrow.ONLINE_IMG--> offline<!-- ENDIF --><!-- IF postrow.POSTER_WARNINGS --> warned<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* */
/* */
/* */
/* 		<div class="postbody">*/
/* 			<!-- IF postrow.S_POST_HIDDEN -->*/
/* 				<!-- IF postrow.S_POST_DELETED -->*/
/* 					<div class="ignore" id="post_hidden{postrow.POST_ID}">*/
/* 						{postrow.L_POST_DELETED_MESSAGE}<br />*/
/* 						{postrow.L_POST_DISPLAY}*/
/* 					</div>*/
/* 				<!-- ELSEIF postrow.S_IGNORE_POST -->*/
/* 					<div class="ignore" id="post_hidden{postrow.POST_ID}">*/
/* 						{postrow.L_IGNORE_POST}<br />*/
/* 						{postrow.L_POST_DISPLAY}*/
/* 					</div>*/
/* 				<!-- ENDIF -->*/
/* 			<!-- ENDIF -->*/
/* 			<div id="post_content{postrow.POST_ID}"<!-- IF postrow.S_POST_HIDDEN --> style="display: none;"<!-- ENDIF -->>*/
/* */
/* 			<!-- EVENT viewtopic_body_post_subject_before -->*/
/* 			<h3 <!-- IF postrow.S_FIRST_ROW -->class="first"<!-- ENDIF -->><!-- IF postrow.POST_ICON_IMG --><img src="{T_ICONS_PATH}{postrow.POST_ICON_IMG}" width="{postrow.POST_ICON_IMG_WIDTH}" height="{postrow.POST_ICON_IMG_HEIGHT}" alt="{postrow.POST_ICON_IMG_ALT}" title="{postrow.POST_ICON_IMG_ALT}" /> <!-- ENDIF --><a href="#p{postrow.POST_ID}">{postrow.POST_SUBJECT}</a></h3>*/
/* */
/* 		<!-- DEFINE $SHOW_POST_BUTTONS = (postrow.U_EDIT or postrow.U_DELETE or postrow.U_REPORT or postrow.U_WARN or postrow.U_INFO or postrow.U_QUOTE) -->*/
/* 		<!-- EVENT viewtopic_body_post_buttons_list_before -->*/
/* 		<!-- IF not S_IS_BOT -->*/
/* 			<!-- IF $SHOW_POST_BUTTONS -->*/
/* 				<ul class="post-buttons">*/
/* 					<!-- EVENT viewtopic_body_post_buttons_before -->*/
/* 					<!-- IF postrow.U_EDIT -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_EDIT}" title="{L_EDIT_POST}" class="button button-icon-only">*/
/* 								<i class="icon fa-pencil fa-fw" aria-hidden="true"></i><span class="sr-only">{L_BUTTON_EDIT}</span>*/
/* 							</a>*/
/* 						</li>-->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_DELETE -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_DELETE}" title="{L_DELETE_POST}" class="button button-icon-only">*/
/* 								<i class="icon fa-times fa-fw" aria-hidden="true"></i><span class="sr-only">{L_DELETE_POST}</span>*/
/* 							</a>*/
/* 						</li>-->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_REPORT -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_REPORT}" title="{L_REPORT_POST}" class="button button-icon-only">*/
/* 								<i class="icon fa-exclamation fa-fw" aria-hidden="true"></i><span class="sr-only">{L_REPORT_POST}</span>*/
/* 							</a>*/
/* 						</li>-->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_WARN -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_WARN}" title="{L_WARN_USER}" class="button button-icon-only">*/
/* 								<i class="icon fa-exclamation-triangle fa-fw" aria-hidden="true"></i><span class="sr-only">{L_WARN_USER}</span>*/
/* 							</a>*/
/* 						</li>-->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_INFO -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_INFO}" title="{L_INFORMATION}" class="button button-icon-only">*/
/* 								<i class="icon fa-info fa-fw" aria-hidden="true"></i><span class="sr-only">{L_INFORMATION}</span>*/
/* 							</a>*/
/* 						</li> -->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_QUOTE -->*/
/* 					<!--	<li>*/
/* 							<a href="{postrow.U_QUOTE}" title="{L_REPLY_WITH_QUOTE}" class="button button-icon-only">*/
/* 								<i class="icon fa-quote-left fa-fw" aria-hidden="true"></i><span class="sr-only">{L_QUOTE}</span>*/
/* 							</a>*/
/* 						</li>-->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- EVENT viewtopic_body_post_buttons_after -->*/
/* 				</ul>*/
/* 			<!-- ENDIF -->*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT viewtopic_body_post_buttons_list_after -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_details_before -->*/
/* 			<p class="author">*/
/* 				<!-- IF S_IS_BOT -->*/
/* 					<span><i class="icon fa-file fa-fw <!-- IF postrow.S_UNREAD_POST -->icon-red<!-- ELSE -->icon-lightgray<!-- ENDIF --> icon-md" aria-hidden="true"></i><span class="sr-only">{postrow.MINI_POST}</span></span>*/
/* 				<!-- ELSE -->*/
/* 					<a class="unread" href="{postrow.U_MINI_POST}" title="{postrow.MINI_POST}">*/
/* 						<i class="icon fa-file fa-fw <!-- IF postrow.S_UNREAD_POST -->icon-red<!-- ELSE -->icon-lightgray<!-- ENDIF --> icon-md" aria-hidden="true"></i><span class="sr-only">{postrow.MINI_POST}</span>*/
/* 					</a>*/
/* 				<!-- ENDIF -->*/
/* 				<span class="responsive-hide">{L_POST_BY_AUTHOR} <strong>{postrow.POST_AUTHOR_FULL}</strong> &raquo; </span>{postrow.POST_DATE}*/
/* 			</p>*/
/* 			<!-- EVENT viewtopic_body_postrow_post_details_after -->*/
/* */
/* 			<!-- IF postrow.S_POST_UNAPPROVED -->*/
/* 			<form method="post" class="mcp_approve" action="{postrow.U_APPROVE_ACTION}">*/
/* 				<p class="post-notice unapproved">*/
/* 					<span><i class="icon fa-question icon-red fa-fw" aria-hidden="true"></i></span>*/
/* 					<strong>{L_POST_UNAPPROVED_ACTION}</strong>*/
/* 					<input class="button2" type="submit" value="{L_DISAPPROVE}" name="action[disapprove]" />*/
/* 					<input class="button1" type="submit" value="{L_APPROVE}" name="action[approve]" />*/
/* 					<input type="hidden" name="post_id_list[]" value="{postrow.POST_ID}" />*/
/* 					{S_FORM_TOKEN}*/
/* 				</p>*/
/* 			</form>*/
/* 			<!-- ELSEIF postrow.S_POST_DELETED -->*/
/* 			<form method="post" class="mcp_approve" action="{postrow.U_APPROVE_ACTION}">*/
/* 				<p class="post-notice deleted">*/
/* 					<strong>{L_POST_DELETED_ACTION}</strong>*/
/* 					<!-- IF postrow.S_DELETE_PERMANENT -->*/
/* 						<input class="button2" type="submit" value="{L_DELETE}" name="action[delete]" />*/
/* 					<!-- ENDIF -->*/
/* 					<input class="button1" type="submit" value="{L_RESTORE}" name="action[restore]" />*/
/* 					<input type="hidden" name="post_id_list[]" value="{postrow.POST_ID}" />*/
/* 					{S_FORM_TOKEN}*/
/* 				</p>*/
/* 			</form>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF postrow.S_POST_REPORTED -->*/
/* 			<p class="post-notice reported">*/
/* 				<a href="{postrow.U_MCP_REPORT}"><i class="icon fa-exclamation fa-fw icon-red" aria-hidden="true"></i><strong>{L_POST_REPORTED}</strong></a>*/
/* 			</p>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<div class="content">{postrow.MESSAGE}</div>*/
/* */
/* 			<!-- IF postrow.S_HAS_ATTACHMENTS -->*/
/* 				<dl class="attachbox">*/
/* 					<dt>*/
/* 						{L_ATTACHMENTS}*/
/* 					</dt>*/
/* 					<!-- BEGIN attachment -->*/
/* 						<dd>{postrow.attachment.DISPLAY_ATTACHMENT}</dd>*/
/* 					<!-- END attachment -->*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_notices_before -->*/
/* 			<!-- IF postrow.S_DISPLAY_NOTICE --><div class="rules">{L_DOWNLOAD_NOTICE}</div><!-- ENDIF -->*/
/* 			<!-- IF postrow.DELETED_MESSAGE or postrow.DELETE_REASON -->*/
/* 				<div class="notice post_deleted_msg">*/
/* 					{postrow.DELETED_MESSAGE}*/
/* 					<!-- IF postrow.DELETE_REASON --><br /><strong>{L_REASON}{L_COLON}</strong> <em>{postrow.DELETE_REASON}</em><!-- ENDIF -->*/
/* 				</div>*/
/* 			<!-- ELSEIF postrow.EDITED_MESSAGE or postrow.EDIT_REASON -->*/
/* 				<div class="notice">*/
/* 					{postrow.EDITED_MESSAGE}*/
/* 					<!-- IF postrow.EDIT_REASON --><br /><strong>{L_REASON}{L_COLON}</strong> <em>{postrow.EDIT_REASON}</em><!-- ENDIF -->*/
/* 				</div>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF postrow.BUMPED_MESSAGE --><div class="notice"><br /><br />{postrow.BUMPED_MESSAGE}</div><!-- ENDIF -->*/
/* 			<!-- EVENT viewtopic_body_postrow_post_notices_after -->*/
/* 			<!-- IF postrow.SIGNATURE --><div id="sig{postrow.POST_ID}" class="signature">{postrow.SIGNATURE}</div><!-- ENDIF -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_content_footer -->*/
/* 			</div>*/
/* */
/* 		</div>*/
/* */
/* 		<!-- EVENT viewtopic_body_postrow_back2top_before -->*/
/* 		<div class="back2top">*/
/* 			<!-- EVENT viewtopic_body_postrow_back2top_prepend -->*/
/* 			<a href="#top" class="top" title="{L_BACK_TO_TOP}">*/
/* 				<i class="icon fa-chevron-circle-up fa-fw icon-gray" aria-hidden="true"></i>*/
/* 				<span class="sr-only">{L_BACK_TO_TOP}</span>*/
/* 			</a>*/
/* 			<!-- EVENT viewtopic_body_postrow_back2top_append -->*/
/* 		</div>*/
/* 		<!-- EVENT viewtopic_body_postrow_back2top_after -->*/
/* */
/* 		</div>*/
/* 	</div>*/
/* */
/* 	<hr class="divider" />*/
/* 	<!-- EVENT viewtopic_body_postrow_post_after -->*/
/* <!-- END postrow -->*/
/* */
/* <!-- IF S_QUICK_REPLY -->*/
/* 	<!-- INCLUDE quickreply_editor.html -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewtopic_body_topic_actions_before -->*/
/* 	<div class="action-bar bar-bottom">*/
/* 	<!-- EVENT viewtopic_buttons_bottom_before -->*/
/* */
/* <!-- line 377- 385 remove post reply button -->*/
/* 	<!-- EVENT viewtopic_buttons_bottom_after -->*/
/* */
/* 	<!-- INCLUDE viewtopic_topic_tools.html -->*/
/* */
/* 	<!-- IF (S_NUM_POSTS > 1 or .pagination) and not S_IS_BOT  -->*/
/* */
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF .quickmod -->*/
/* 	<div class="quickmod dropdown-container dropdown-container-left dropdown-up dropdown-{S_CONTENT_FLOW_END} dropdown-button-control" id="quickmod">*/
/* 		<span title="{L_QUICK_MOD}" class="button button-secondary dropdown-trigger dropdown-select">*/
/* 			<i class="icon fa-gavel fa-fw" aria-hidden="true"></i><span class="sr-only">{L_QUICK_MOD}</span>*/
/* 			<span class="caret"><i class="icon fa-sort-down fa-fw" aria-hidden="true"></i></span>*/
/* 		</span>*/
/* 		<div class="dropdown">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents">*/
/* 				<!-- BEGIN quickmod -->*/
/* 					<!-- DEFINE $QUICKMOD_AJAX = (quickmod.VALUE in ['lock', 'unlock', 'delete_topic', 'restore_topic', 'make_normal', 'make_sticky', 'make_announce', 'make_global']) -->*/
/* 					<li><a href="{quickmod.LINK}"<!-- IF $QUICKMOD_AJAX --> data-ajax="true" data-refresh="true"<!-- ENDIF -->>{quickmod.TITLE}</a></li>*/
/* 				<!-- END quickmod -->*/
/* 				</ul>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- EVENT viewtopic_dropdown_bottom_custom -->*/
/* */
/* 	<!-- IF .pagination or TOTAL_POSTS -->*/
/* 	<!--	<div class="pagination">*/
/* 			{TOTAL_POSTS}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 			<!--	&bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 	<!--	</div>-->*/
/* 	<!-- ENDIF -->*/
/* </div>*/
/* */
/* <!-- EVENT viewtopic_body_footer_before -->*/
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- IF S_DISPLAY_ONLINE_LIST -->*/
/* 	<div class="stat-block online-list">*/
/* 		<h3><!-- IF U_VIEWONLINE --><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a><!-- ELSE -->{L_WHO_IS_ONLINE}<!-- ENDIF --></h3>*/
/* 		<p>{LOGGED_IN_USER_LIST}</p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
