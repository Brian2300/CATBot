<?php

/* viewforum_body.html */
class __TwigTemplate_0cc1afa42d8d5df373615f2a606b027b8c26def8fa077be1839cc4025ff0d154 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "viewforum_body.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        // line 3
        echo "<h2 class=\"forum-title\">";
        echo "<a href=\"";
        echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
        echo "\">";
        echo (isset($context["FORUM_NAME"]) ? $context["FORUM_NAME"] : null);
        echo "</a>";
        echo "</h2>
";
        // line 4
        // line 5
        if ((((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null) || (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) || (isset($context["U_MCP"]) ? $context["U_MCP"] : null))) {
            // line 6
            echo "<div>
\t<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the forum body -->
\t";
            // line 8
            if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
                echo "<div style=\"display: none !important;\">";
                echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
                echo "<br /></div>";
            }
            // line 9
            echo "\t";
            if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
                echo "<p><strong>";
                if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("MODERATOR");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("MODERATORS");
                }
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
                echo "</p>";
            }
            // line 10
            echo "</div>
";
        }
        // line 12
        echo "
";
        // line 13
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 14
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 17
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 18
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 20
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 21
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 23
            echo "
\t\t</div>
\t</div>
";
        }
        // line 27
        echo "
";
        // line 28
        if ((isset($context["S_HAS_SUBFORUM"]) ? $context["S_HAS_SUBFORUM"] : null)) {
            // line 29
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null))) {
                // line 30
                echo "\t<div class=\"action-bar compact\">
\t\t<a href=\"";
                // line 31
                echo (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null);
                echo "\" class=\"mark-read rightside\" data-ajax=\"mark_forums_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_SUBFORUMS_READ");
                echo "</a>
\t</div>
";
            }
            // line 34
            echo "\t";
            $location = "forumlist_body.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("forumlist_body.html", "viewforum_body.html", 34)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 36
        echo "
";
        // line 37
        if (((((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null)) || (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null))) {
            // line 38
            echo "\t<div class=\"action-bar bar-top\">

\t";
            // line 40
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                // line 41
                echo "\t\t\t";
                // line 42
                echo "
\t\t<a href=\"";
                // line 43
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" class=\"button\" title=\"";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t";
                // line 44
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    // line 45
                    echo "\t\t\t\t<span>";
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_FORUM_LOCKED");
                    echo "</span> <i class=\"icon fa-lock fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                } else {
                    // line 47
                    echo "\t\t\t\t<span>";
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_NEW_TOPIC");
                    echo "</span> <i class=\"icon fa-pencil fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                }
                // line 49
                echo "\t\t\t
\t\t</a>
<!-- remove sorting function -->
\t\t
\t\t<div class=\"action-bar bar-bottom\">
\t\t";
                // line 54
                if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                    // line 55
                    echo "\t\t\t";
                    // line 56
                    echo "        <div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"forum-search\" action=\"";
                    // line 57
                    echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
                    echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
                    // line 59
                    echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUM");
                    echo "\" />
\t\t\t\t<button class=\"button button-search\" type=\"submit\" title=\"";
                    // line 60
                    echo $this->env->getExtension('phpbb')->lang("SEARCH");
                    echo "\">
\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                    // line 61
                    echo $this->env->getExtension('phpbb')->lang("SEARCH");
                    echo "</span>
\t\t\t\t</button>

\t\t\t\t";
                    // line 64
                    echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
                    echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>

\t\t\t";
                    // line 69
                    // line 70
                    echo "\t\t";
                }
                // line 71
                echo "



\t</div>
\t\t\t";
                // line 76
                // line 77
                echo "\t";
            }
            // line 78
            echo "
\t";
            // line 79
            if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
                echo " <!-- ******Remove 54 - 67 -->
\t\t
\t";
            }
            // line 82
            echo "
<!-- removed Mark questions read • 15 questions • Page 1 of 1 -->

\t</div>
";
        }
        // line 87
        echo "
";
        // line 88
        if ((isset($context["S_NO_READ_ACCESS"]) ? $context["S_NO_READ_ACCESS"] : null)) {
            // line 89
            echo "
\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
            // line 92
            echo $this->env->getExtension('phpbb')->lang("NO_READ_ACCESS");
            echo "</strong>
\t\t</div>
\t</div>

\t";
            // line 96
            if (( !(isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 97
                echo "
\t\t<form action=\"";
                // line 98
                echo (isset($context["S_LOGIN_ACTION"]) ? $context["S_LOGIN_ACTION"] : null);
                echo "\" method=\"post\">

\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">

\t\t\t<div class=\"content\">
\t\t\t\t<h3><a href=\"";
                // line 104
                echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
                echo "</a>";
                if ((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null)) {
                    echo "&nbsp; &bull; &nbsp;<a href=\"";
                    echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("REGISTER");
                    echo "</a>";
                }
                echo "</h3>

\t\t\t\t<fieldset class=\"fields1\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"username\">";
                // line 108
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"username\" id=\"username\" size=\"25\" value=\"";
                // line 109
                echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
                echo "\" class=\"inputbox autowidth\" /></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"password\">";
                // line 112
                echo $this->env->getExtension('phpbb')->lang("PASSWORD");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"password\" tabindex=\"2\" id=\"password\" name=\"password\" size=\"25\" class=\"inputbox autowidth\" autocomplete=\"off\" /></dd>
\t\t\t\t\t";
                // line 114
                if ((isset($context["S_AUTOLOGIN_ENABLED"]) ? $context["S_AUTOLOGIN_ENABLED"] : null)) {
                    echo "<dd><label for=\"autologin\"><input type=\"checkbox\" name=\"autologin\" id=\"autologin\" tabindex=\"3\" /> ";
                    echo $this->env->getExtension('phpbb')->lang("LOG_ME_IN");
                    echo "</label></dd>";
                }
                // line 115
                echo "\t\t\t\t\t<dd><label for=\"viewonline\"><input type=\"checkbox\" name=\"viewonline\" id=\"viewonline\" tabindex=\"4\" /> ";
                echo $this->env->getExtension('phpbb')->lang("HIDE_ME");
                echo "</label></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd><input type=\"submit\" name=\"login\" tabindex=\"5\" value=\"";
                // line 119
                echo $this->env->getExtension('phpbb')->lang("LOGIN");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 121
                echo (isset($context["S_LOGIN_REDIRECT"]) ? $context["S_LOGIN_REDIRECT"] : null);
                echo "
\t\t\t\t</fieldset>
\t\t\t</div>

\t\t\t</div>
\t\t</div>

\t\t</form>

\t";
            }
            // line 131
            echo "
";
        }
        // line 133
        echo "
";
        // line 134
        // line 135
        echo "
";
        // line 136
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array()));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
            // line 137
            echo "
\t";
            // line 138
            if (( !$this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) &&  !$this->getAttribute($context["topicrow"], "S_FIRST_ROW", array()))) {
                // line 139
                echo "\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 143
            echo "
\t";
            // line 144
            if (($this->getAttribute($context["topicrow"], "S_FIRST_ROW", array()) ||  !$this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()))) {
                // line 145
                echo "\t\t<div class=\"forumbg";
                if (($this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) && ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array()) || $this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())))) {
                    echo " announcement";
                }
                echo "\">
\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"row-item\">
\t\t\t\t\t<dt";
                // line 150
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo " id=\"active_topics\"";
                }
                echo "><div class=\"list-inner\">";
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("ACTIVE_TOPICS");
                } elseif (($this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) && ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array()) || $this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())))) {
                    echo $this->env->getExtension('phpbb')->lang("ANNOUNCEMENTS");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("TOPICS");
                }
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 151
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<!--<dd class=\"views\">";
                // line 152
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>-->
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 153
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">
\t";
            }
            // line 159
            echo "
\t\t";
            // line 160
            // line 161
            echo "\t\t<li class=\"row";
            if (($this->getAttribute($context["topicrow"], "S_ROW_COUNT", array()) % 2 == 0)) {
                echo " bg1";
            } else {
                echo " bg2";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())) {
                echo " global-announce";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array())) {
                echo " announce";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_STICKY", array())) {
                echo " sticky";
            }
            if ((($this->getAttribute($context["topicrow"], "S_TOPIC_REPORTED", array()) || $this->getAttribute($context["topicrow"], "S_TOPIC_UNAPPROVED", array())) || $this->getAttribute($context["topicrow"], "S_POSTS_UNAPPROVED", array()))) {
                echo " reported";
            }
            echo "\">
\t\t\t";
            // line 162
            // line 163
            echo "\t\t\t<dl class=\"row-item ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_IMG_STYLE", array());
            echo "\">
\t\t\t\t<dt";
            // line 164
            if (($this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array()) && (isset($context["S_TOPIC_ICONS"]) ? $context["S_TOPIC_ICONS"] : null))) {
                echo " style=\"background-image: url(";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array());
                echo "); background-repeat: no-repeat;\"";
            }
            echo " title=\"";
            echo $this->getAttribute($context["topicrow"], "TOPIC_FOLDER_IMG_ALT", array());
            echo "\">
\t\t\t\t\t";
            // line 165
            if (($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_NEWEST_POST", array());
                echo "\" class=\"row-item-link\"></a>";
            }
            // line 166
            echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
            // line 167
            // line 168
            echo "\t\t\t\t\t\t";
            if (($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 169
                echo "\t\t\t\t\t\t\t<a class=\"unread\" href=\"";
                echo $this->getAttribute($context["topicrow"], "U_NEWEST_POST", array());
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw icon-red icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 170
                echo (isset($context["NEW_POST"]) ? $context["NEW_POST"] : null);
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 173
            echo "\t\t\t\t\t\t<a href=\"";
            echo $this->getAttribute($context["topicrow"], "U_VIEW_TOPIC", array());
            echo "\" class=\"topictitle\">";
            echo $this->getAttribute($context["topicrow"], "TOPIC_TITLE", array());
            echo "</a>
\t\t\t\t\t\t";
            // line 174
            if (($this->getAttribute($context["topicrow"], "S_TOPIC_UNAPPROVED", array()) || $this->getAttribute($context["topicrow"], "S_POSTS_UNAPPROVED", array()))) {
                // line 175
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_QUEUE", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("TOPIC_UNAPPROVED");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-question fa-fw icon-blue\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 176
                echo $this->env->getExtension('phpbb')->lang("TOPIC_UNAPPROVED");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 179
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "S_TOPIC_DELETED", array())) {
                // line 180
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_QUEUE", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("TOPIC_DELETED");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-recycle fa-fw icon-green\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 181
                echo $this->env->getExtension('phpbb')->lang("TOPIC_DELETED");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 184
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "S_TOPIC_REPORTED", array())) {
                // line 185
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_REPORT", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("TOPIC_REPORTED");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation fa-fw icon-red\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 186
                echo $this->env->getExtension('phpbb')->lang("TOPIC_REPORTED");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 189
            echo "\t\t\t\t\t\t<br />
\t\t\t\t\t\t";
            // line 190
            // line 191
            echo "
\t\t\t\t\t\t";
            // line 192
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 193
                echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 194
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo " ";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_AUTHOR_FULL", array());
                echo " &laquo; <a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_TIME", array());
                echo "</a>
\t\t\t\t\t\t\t";
                // line 195
                if (($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array()) && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute($context["topicrow"], "FORUM_ID", array())))) {
                    echo "<br />";
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_VIEW_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "FORUM_NAME", array());
                    echo "</a>";
                }
                // line 196
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 197
                if ($this->getAttribute($context["topicrow"], "REPLIES", array())) {
                    echo "<span class=\"responsive-show left-box\" style=\"display: none;\">";
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute($context["topicrow"], "REPLIES", array());
                    echo "</strong></span>";
                }
                // line 198
                echo "\t\t\t\t\t\t";
            }
            // line 199
            echo "
\t\t\t\t\t\t<div class=\"topic-poster responsive-hide\">
\t\t\t\t\t\t\t";
            // line 201
            if ($this->getAttribute($context["topicrow"], "S_HAS_POLL", array())) {
                echo "<i class=\"icon fa-bar-chart fa-fw\" aria-hidden=\"true\"></i>";
            }
            // line 202
            echo "\t\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array())) {
                echo "<i class=\"icon fa-paperclip fa-fw\" aria-hidden=\"true\"></i>";
            }
            // line 203
            echo "\t\t\t\t\t\t\t<!-- change ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_AUTHOR_FULL", array());
            echo " to ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_AUTHOR", array());
            echo " in the line below-->
\t\t\t\t\t\t\t";
            // line 204
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_AUTHOR", array());
            echo " &raquo; ";
            echo $this->getAttribute($context["topicrow"], "FIRST_POST_TIME", array());
            echo "
\t\t\t\t\t\t\t";
            // line 205
            if (($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array()) && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute($context["topicrow"], "FORUM_ID", array())))) {
                echo " &raquo; ";
                echo $this->env->getExtension('phpbb')->lang("IN");
                echo " <a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_VIEW_FORUM", array());
                echo "\">";
                echo $this->getAttribute($context["topicrow"], "FORUM_NAME", array());
                echo "</a>";
            }
            // line 206
            echo "\t\t\t\t\t\t</div>

\t\t\t\t\t\t";
            // line 208
            if (twig_length_filter($this->env, $this->getAttribute($context["topicrow"], "pagination", array()))) {
                // line 209
                echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<span><i class=\"icon fa-clone fa-fw\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                // line 212
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["topicrow"], "pagination", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                    // line 213
                    echo "\t\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["pagination"], "S_IS_PREV", array())) {
                        // line 214
                        echo "\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute($context["pagination"], "S_IS_CURRENT", array())) {
                        echo "<li class=\"active\"><span>";
                        echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute(                    // line 215
$context["pagination"], "S_IS_ELLIPSIS", array())) {
                        echo "<li class=\"ellipsis\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute(                    // line 216
$context["pagination"], "S_IS_NEXT", array())) {
                        // line 217
                        echo "\t\t\t\t\t\t\t\t";
                    } else {
                        echo "<li><a class=\"button\" href=\"";
                        echo $this->getAttribute($context["pagination"], "PAGE_URL", array());
                        echo "\">";
                        echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                        echo "</a></li>
\t\t\t\t\t\t\t\t";
                    }
                    // line 219
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 220
                echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            // line 223
            echo "
\t\t\t\t\t\t";
            // line 224
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array('robertheim_topictags', '__main__'));
            $this->env->loadTemplate('@robertheim_topictags/event/topiclist_row_append.html')->display($context);
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            // line 225
            echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"posts\">";
            // line 227
            echo $this->getAttribute($context["topicrow"], "REPLIES", array());
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("REPLIES");
            echo "</dfn></dd>
\t\t\t\t<!--<dd class=\"views\">";
            // line 228
            echo $this->getAttribute($context["topicrow"], "VIEWS", array());
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("VIEWS");
            echo "</dfn></dd>-->
\t\t\t\t<dd class=\"lastpost\">
\t\t\t\t\t<span><dfn>";
            // line 230
            echo $this->env->getExtension('phpbb')->lang("LAST_POST");
            echo " </dfn><!--removed by authour in Last Post--><!--";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute($context["topicrow"], "LAST_POST_AUTHOR_FULL", array());
            echo "-->
\t\t\t\t\t
\t\t\t\t\t\t<br />";
            // line 232
            echo $this->getAttribute($context["topicrow"], "LAST_POST_TIME", array());
            echo "
\t\t\t\t\t</span>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t";
            // line 236
            // line 237
            echo "\t\t</li>
\t\t";
            // line 238
            // line 239
            echo "
\t";
            // line 240
            if ($this->getAttribute($context["topicrow"], "S_LAST_ROW", array())) {
                // line 241
                echo "\t\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 245
            echo "
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 247
            echo "\t";
            if ((isset($context["S_IS_POSTABLE"]) ? $context["S_IS_POSTABLE"] : null)) {
                // line 248
                echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
                // line 250
                echo $this->env->getExtension('phpbb')->lang("NO_TOPICS");
                echo "</strong>
\t\t</div>
\t</div>
\t";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 255
        echo "
";
        // line 256
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())) &&  !(isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null))) {
            echo " <!-- ******Remove 255 - 285 -->

";
        }
        // line 259
        echo "
";
        // line 260
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewforum_body.html", 260)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 261
        echo "
";
        // line 262
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 263
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 264
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
            // line 265
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 268
        echo "
";
        // line 269
        if ((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null)) {
            // line 270
            echo "\t<div class=\"stat-block permissions\">
\t\t<h3>";
            // line 271
            echo $this->env->getExtension('phpbb')->lang("FORUM_PERMISSIONS");
            echo "</h3>
\t\t<p>";
            // line 272
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rules", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["rules"]) {
                echo $this->getAttribute($context["rules"], "RULE", array());
                echo "<br />";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rules'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</p>
\t</div>
";
        }
        // line 275
        echo "
";
        // line 276
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewforum_body.html", 276)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewforum_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  852 => 276,  849 => 275,  835 => 272,  831 => 271,  828 => 270,  826 => 269,  823 => 268,  817 => 265,  805 => 264,  802 => 263,  800 => 262,  797 => 261,  785 => 260,  782 => 259,  776 => 256,  773 => 255,  762 => 250,  758 => 248,  755 => 247,  749 => 245,  743 => 241,  741 => 240,  738 => 239,  737 => 238,  734 => 237,  733 => 236,  726 => 232,  717 => 230,  710 => 228,  704 => 227,  700 => 225,  695 => 224,  692 => 223,  687 => 220,  681 => 219,  671 => 217,  669 => 216,  663 => 215,  656 => 214,  653 => 213,  649 => 212,  644 => 209,  642 => 208,  638 => 206,  628 => 205,  620 => 204,  613 => 203,  608 => 202,  604 => 201,  600 => 199,  597 => 198,  588 => 197,  585 => 196,  573 => 195,  559 => 194,  556 => 193,  554 => 192,  551 => 191,  550 => 190,  547 => 189,  541 => 186,  534 => 185,  531 => 184,  525 => 181,  518 => 180,  515 => 179,  509 => 176,  502 => 175,  500 => 174,  493 => 173,  487 => 170,  482 => 169,  479 => 168,  478 => 167,  475 => 166,  469 => 165,  458 => 164,  453 => 163,  452 => 162,  431 => 161,  430 => 160,  427 => 159,  418 => 153,  414 => 152,  410 => 151,  396 => 150,  385 => 145,  383 => 144,  380 => 143,  374 => 139,  372 => 138,  369 => 137,  364 => 136,  361 => 135,  360 => 134,  357 => 133,  353 => 131,  340 => 121,  335 => 119,  327 => 115,  321 => 114,  315 => 112,  309 => 109,  304 => 108,  287 => 104,  278 => 98,  275 => 97,  273 => 96,  266 => 92,  261 => 89,  259 => 88,  256 => 87,  249 => 82,  243 => 79,  240 => 78,  237 => 77,  236 => 76,  229 => 71,  226 => 70,  225 => 69,  217 => 64,  211 => 61,  207 => 60,  203 => 59,  198 => 57,  195 => 56,  193 => 55,  191 => 54,  184 => 49,  178 => 47,  172 => 45,  170 => 44,  160 => 43,  157 => 42,  155 => 41,  153 => 40,  149 => 38,  147 => 37,  144 => 36,  130 => 34,  122 => 31,  119 => 30,  117 => 29,  115 => 28,  112 => 27,  106 => 23,  101 => 21,  96 => 20,  88 => 18,  86 => 17,  77 => 14,  75 => 13,  72 => 12,  68 => 10,  54 => 9,  48 => 8,  44 => 6,  42 => 5,  41 => 4,  32 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* <!-- EVENT viewforum_forum_title_before -->*/
/* <h2 class="forum-title"><!-- EVENT viewforum_forum_name_prepend --><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a><!-- EVENT viewforum_forum_name_append --></h2>*/
/* <!-- EVENT viewforum_forum_title_after -->*/
/* <!-- IF FORUM_DESC or MODERATORS or U_MCP -->*/
/* <div>*/
/* 	<!-- NOTE: remove the style="display: none" when you want to have the forum description on the forum body -->*/
/* 	<!-- IF FORUM_DESC --><div style="display: none !important;">{FORUM_DESC}<br /></div><!-- ENDIF -->*/
/* 	<!-- IF MODERATORS --><p><strong><!-- IF S_SINGLE_MODERATOR -->{L_MODERATOR}<!-- ELSE -->{L_MODERATORS}<!-- ENDIF -->{L_COLON}</strong> {MODERATORS}</p><!-- ENDIF -->*/
/* </div>*/
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
/* <!-- IF S_HAS_SUBFORUM -->*/
/* <!-- IF not S_IS_BOT and U_MARK_FORUMS -->*/
/* 	<div class="action-bar compact">*/
/* 		<a href="{U_MARK_FORUMS}" class="mark-read rightside" data-ajax="mark_forums_read">{L_MARK_SUBFORUMS_READ}</a>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* 	<!-- INCLUDE forumlist_body.html -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_DISPLAY_POST_INFO or .pagination or TOTAL_POSTS or TOTAL_TOPICS -->*/
/* 	<div class="action-bar bar-top">*/
/* */
/* 	<!-- IF not S_IS_BOT and S_DISPLAY_POST_INFO -->*/
/* 			<!-- EVENT viewforum_buttons_top_before -->*/
/* */
/* 		<a href="{U_POST_NEW_TOPIC}" class="button" title="<!-- IF S_IS_LOCKED -->{L_FORUM_LOCKED}<!-- ELSE -->{L_POST_TOPIC}<!-- ENDIF -->">*/
/* 			<!-- IF S_IS_LOCKED -->*/
/* 				<span>{L_BUTTON_FORUM_LOCKED}</span> <i class="icon fa-lock fa-fw" aria-hidden="true"></i>*/
/* 			<!-- ELSE -->*/
/* 				<span>{L_BUTTON_NEW_TOPIC}</span> <i class="icon fa-pencil fa-fw" aria-hidden="true"></i>*/
/* 			<!-- ENDIF -->*/
/* 			*/
/* 		</a>*/
/* <!-- remove sorting function -->*/
/* 		*/
/* 		<div class="action-bar bar-bottom">*/
/* 		<!-- IF not S_IS_BOT and S_DISPLAY_POST_INFO -->*/
/* 			<!-- EVENT viewforum_buttons_bottom_before -->*/
/*         <div class="search-box" role="search">*/
/* 			<form method="get" id="forum-search" action="{S_SEARCHBOX_ACTION}">*/
/* 			<fieldset>*/
/* 				<input class="inputbox search tiny" type="search" name="keywords" id="search_keywords" size="20" placeholder="{L_SEARCH_FORUM}" />*/
/* 				<button class="button button-search" type="submit" title="{L_SEARCH}">*/
/* 					<i class="icon fa-search fa-fw" aria-hidden="true"></i><span class="sr-only">{L_SEARCH}</span>*/
/* 				</button>*/
/* */
/* 				{S_SEARCH_LOCAL_HIDDEN_FIELDS}*/
/* 			</fieldset>*/
/* 			</form>*/
/* 		</div>*/
/* */
/* 			<!-- EVENT viewforum_buttons_bottom_after -->*/
/* 		<!-- ENDIF -->*/
/* */
/* */
/* */
/* */
/* 	</div>*/
/* 			<!-- EVENT viewforum_buttons_top_after -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_DISPLAY_SEARCHBOX --> <!-- ******Remove 54 - 67 -->*/
/* 		*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- removed Mark questions read • 15 questions • Page 1 of 1 -->*/
/* */
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_NO_READ_ACCESS -->*/
/* */
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* 		<strong>{L_NO_READ_ACCESS}</strong>*/
/* 		</div>*/
/* 	</div>*/
/* */
/* 	<!-- IF not S_USER_LOGGED_IN and not S_IS_BOT -->*/
/* */
/* 		<form action="{S_LOGIN_ACTION}" method="post">*/
/* */
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* */
/* 			<div class="content">*/
/* 				<h3><a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a><!-- IF S_REGISTER_ENABLED -->&nbsp; &bull; &nbsp;<a href="{U_REGISTER}">{L_REGISTER}</a><!-- ENDIF --></h3>*/
/* */
/* 				<fieldset class="fields1">*/
/* 				<dl>*/
/* 					<dt><label for="username">{L_USERNAME}{L_COLON}</label></dt>*/
/* 					<dd><input type="text" tabindex="1" name="username" id="username" size="25" value="{USERNAME}" class="inputbox autowidth" /></dd>*/
/* 				</dl>*/
/* 				<dl>*/
/* 					<dt><label for="password">{L_PASSWORD}{L_COLON}</label></dt>*/
/* 					<dd><input type="password" tabindex="2" id="password" name="password" size="25" class="inputbox autowidth" autocomplete="off" /></dd>*/
/* 					<!-- IF S_AUTOLOGIN_ENABLED --><dd><label for="autologin"><input type="checkbox" name="autologin" id="autologin" tabindex="3" /> {L_LOG_ME_IN}</label></dd><!-- ENDIF -->*/
/* 					<dd><label for="viewonline"><input type="checkbox" name="viewonline" id="viewonline" tabindex="4" /> {L_HIDE_ME}</label></dd>*/
/* 				</dl>*/
/* 				<dl>*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd><input type="submit" name="login" tabindex="5" value="{L_LOGIN}" class="button1" /></dd>*/
/* 				</dl>*/
/* 				{S_LOGIN_REDIRECT}*/
/* 				</fieldset>*/
/* 			</div>*/
/* */
/* 			</div>*/
/* 		</div>*/
/* */
/* 		</form>*/
/* */
/* 	<!-- ENDIF -->*/
/* */
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewforum_body_topic_row_before -->*/
/* */
/* <!-- BEGIN topicrow -->*/
/* */
/* 	<!-- IF not topicrow.S_TOPIC_TYPE_SWITCH and not topicrow.S_FIRST_ROW -->*/
/* 		</ul>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF topicrow.S_FIRST_ROW or not topicrow.S_TOPIC_TYPE_SWITCH -->*/
/* 		<div class="forumbg<!-- IF topicrow.S_TOPIC_TYPE_SWITCH and (topicrow.S_POST_ANNOUNCE or topicrow.S_POST_GLOBAL) --> announcement<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* 		<ul class="topiclist">*/
/* 			<li class="header">*/
/* 				<dl class="row-item">*/
/* 					<dt<!-- IF S_DISPLAY_ACTIVE --> id="active_topics"<!-- ENDIF -->><div class="list-inner"><!-- IF S_DISPLAY_ACTIVE -->{L_ACTIVE_TOPICS}<!-- ELSEIF topicrow.S_TOPIC_TYPE_SWITCH and (topicrow.S_POST_ANNOUNCE or topicrow.S_POST_GLOBAL) -->{L_ANNOUNCEMENTS}<!-- ELSE -->{L_TOPICS}<!-- ENDIF --></div></dt>*/
/* 					<dd class="posts">{L_REPLIES}</dd>*/
/* 					<!--<dd class="views">{L_VIEWS}</dd>-->*/
/* 					<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 		</ul>*/
/* 		<ul class="topiclist topics">*/
/* 	<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT viewforum_body_topicrow_row_before -->*/
/* 		<li class="row<!-- IF topicrow.S_ROW_COUNT is even --> bg1<!-- ELSE --> bg2<!-- ENDIF --><!-- IF topicrow.S_POST_GLOBAL --> global-announce<!-- ENDIF --><!-- IF topicrow.S_POST_ANNOUNCE --> announce<!-- ENDIF --><!-- IF topicrow.S_POST_STICKY --> sticky<!-- ENDIF --><!-- IF topicrow.S_TOPIC_REPORTED or topicrow.S_TOPIC_UNAPPROVED or topicrow.S_POSTS_UNAPPROVED--> reported<!-- ENDIF -->">*/
/* 			<!-- EVENT viewforum_body_topic_row_prepend -->*/
/* 			<dl class="row-item {topicrow.TOPIC_IMG_STYLE}">*/
/* 				<dt<!-- IF topicrow.TOPIC_ICON_IMG and S_TOPIC_ICONS --> style="background-image: url({T_ICONS_PATH}{topicrow.TOPIC_ICON_IMG}); background-repeat: no-repeat;"<!-- ENDIF --> title="{topicrow.TOPIC_FOLDER_IMG_ALT}">*/
/* 					<!-- IF topicrow.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{topicrow.U_NEWEST_POST}" class="row-item-link"></a><!-- ENDIF -->*/
/* 					<div class="list-inner">*/
/* 						<!-- EVENT topiclist_row_prepend -->*/
/* 						<!-- IF topicrow.S_UNREAD_TOPIC and not S_IS_BOT -->*/
/* 							<a class="unread" href="{topicrow.U_NEWEST_POST}">*/
/* 								<i class="icon fa-file fa-fw icon-red icon-md" aria-hidden="true"></i><span class="sr-only">{NEW_POST}</span>*/
/* 							</a>*/
/* 						<!-- ENDIF -->*/
/* 						<a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a>*/
/* 						<!-- IF topicrow.S_TOPIC_UNAPPROVED or topicrow.S_POSTS_UNAPPROVED -->*/
/* 							<a href="{topicrow.U_MCP_QUEUE}" title="{L_TOPIC_UNAPPROVED}">*/
/* 								<i class="icon fa-question fa-fw icon-blue" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_UNAPPROVED}</span>*/
/* 							</a>*/
/* 						<!-- ENDIF -->*/
/* 						<!-- IF topicrow.S_TOPIC_DELETED -->*/
/* 							<a href="{topicrow.U_MCP_QUEUE}" title="{L_TOPIC_DELETED}">*/
/* 								<i class="icon fa-recycle fa-fw icon-green" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_DELETED}</span>*/
/* 							</a>*/
/* 						<!-- ENDIF -->*/
/* 						<!-- IF topicrow.S_TOPIC_REPORTED -->*/
/* 							<a href="{topicrow.U_MCP_REPORT}" title="{L_TOPIC_REPORTED}">*/
/* 								<i class="icon fa-exclamation fa-fw icon-red" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_REPORTED}</span>*/
/* 							</a>*/
/* 						<!-- ENDIF -->*/
/* 						<br />*/
/* 						<!-- EVENT topiclist_row_topic_title_after -->*/
/* */
/* 						<!-- IF not S_IS_BOT -->*/
/* 						<div class="responsive-show" style="display: none;">*/
/* 							{L_LAST_POST} {L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL} &laquo; <a href="{topicrow.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{topicrow.LAST_POST_TIME}</a>*/
/* 							<!-- IF topicrow.S_POST_GLOBAL and FORUM_ID != topicrow.FORUM_ID --><br />{L_POSTED} {L_IN} <a href="{topicrow.U_VIEW_FORUM}">{topicrow.FORUM_NAME}</a><!-- ENDIF -->*/
/* 						</div>*/
/* 						<!-- IF topicrow.REPLIES --><span class="responsive-show left-box" style="display: none;">{L_REPLIES}{L_COLON} <strong>{topicrow.REPLIES}</strong></span><!-- ENDIF -->*/
/* 						<!-- ENDIF -->*/
/* */
/* 						<div class="topic-poster responsive-hide">*/
/* 							<!-- IF topicrow.S_HAS_POLL --><i class="icon fa-bar-chart fa-fw" aria-hidden="true"></i><!-- ENDIF -->*/
/* 							<!-- IF topicrow.ATTACH_ICON_IMG --><i class="icon fa-paperclip fa-fw" aria-hidden="true"></i><!-- ENDIF -->*/
/* 							<!-- change {topicrow.TOPIC_AUTHOR_FULL} to {topicrow.TOPIC_AUTHOR} in the line below-->*/
/* 							{L_POST_BY_AUTHOR} {topicrow.TOPIC_AUTHOR} &raquo; {topicrow.FIRST_POST_TIME}*/
/* 							<!-- IF topicrow.S_POST_GLOBAL and FORUM_ID != topicrow.FORUM_ID --> &raquo; {L_IN} <a href="{topicrow.U_VIEW_FORUM}">{topicrow.FORUM_NAME}</a><!-- ENDIF -->*/
/* 						</div>*/
/* */
/* 						<!-- IF .topicrow.pagination -->*/
/* 						<div class="pagination">*/
/* 							<span><i class="icon fa-clone fa-fw" aria-hidden="true"></i></span>*/
/* 							<ul>*/
/* 							<!-- BEGIN pagination -->*/
/* 								<!-- IF topicrow.pagination.S_IS_PREV -->*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_CURRENT --><li class="active"><span>{topicrow.pagination.PAGE_NUMBER}</span></li>*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_ELLIPSIS --><li class="ellipsis"><span>{L_ELLIPSIS}</span></li>*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_NEXT -->*/
/* 								<!-- ELSE --><li><a class="button" href="{topicrow.pagination.PAGE_URL}">{topicrow.pagination.PAGE_NUMBER}</a></li>*/
/* 								<!-- ENDIF -->*/
/* 							<!-- END pagination -->*/
/* 							</ul>*/
/* 						</div>*/
/* 						<!-- ENDIF -->*/
/* */
/* 						<!-- EVENT topiclist_row_append -->*/
/* 					</div>*/
/* 				</dt>*/
/* 				<dd class="posts">{topicrow.REPLIES} <dfn>{L_REPLIES}</dfn></dd>*/
/* 				<!--<dd class="views">{topicrow.VIEWS} <dfn>{L_VIEWS}</dfn></dd>-->*/
/* 				<dd class="lastpost">*/
/* 					<span><dfn>{L_LAST_POST} </dfn><!--removed by authour in Last Post--><!--{L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL}-->*/
/* 					*/
/* 						<br />{topicrow.LAST_POST_TIME}*/
/* 					</span>*/
/* 				</dd>*/
/* 			</dl>*/
/* 			<!-- EVENT viewforum_body_topic_row_append -->*/
/* 		</li>*/
/* 		<!-- EVENT viewforum_body_topic_row_after -->*/
/* */
/* 	<!-- IF topicrow.S_LAST_ROW -->*/
/* 			</ul>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- BEGINELSE -->*/
/* 	<!-- IF S_IS_POSTABLE -->*/
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* 		<strong>{L_NO_TOPICS}</strong>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* <!-- END topicrow -->*/
/* */
/* <!-- IF .topicrow and not S_DISPLAY_ACTIVE --> <!-- ******Remove 255 - 285 -->*/
/* */
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- IF S_DISPLAY_ONLINE_LIST -->*/
/* 	<div class="stat-block online-list">*/
/* 		<h3><!-- IF U_VIEWONLINE --><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a><!-- ELSE -->{L_WHO_IS_ONLINE}<!-- ENDIF --></h3>*/
/* 		<p>{LOGGED_IN_USER_LIST}</p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_DISPLAY_POST_INFO -->*/
/* 	<div class="stat-block permissions">*/
/* 		<h3>{L_FORUM_PERMISSIONS}</h3>*/
/* 		<p><!-- BEGIN rules -->{rules.RULE}<br /><!-- END rules --></p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
