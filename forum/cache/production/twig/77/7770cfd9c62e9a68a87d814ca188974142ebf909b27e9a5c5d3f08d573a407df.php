<?php

/* search_results.html */
class __TwigTemplate_835c4e012920734aa2523f28f0100e1b369fcb0b178c8906304b430f29e30422 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "search_results.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
";
        // line 3
        // line 4
        echo "
<h2 class=\"searchresults-title\">";
        // line 5
        if ((isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null)) {
            echo (isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null);
        } else {
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
        }
        if ((isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <a href=\"";
            echo (isset($context["U_SEARCH_WORDS"]) ? $context["U_SEARCH_WORDS"] : null);
            echo "\">";
            echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
            echo "</a>";
        }
        echo "</h2>
<!-- commented line 7 below 00>
";
        // line 7
        if ((isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null)) {
            echo "<!-- &nbsp;<p>";
            echo $this->env->getExtension('phpbb')->lang("SEARCHED_QUERY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null);
            echo "</strong></p>-->";
        }
        // line 8
        if ((isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null)) {
            echo " <p>";
            echo $this->env->getExtension('phpbb')->lang("IGNORED_TERMS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null);
            echo "</strong></p>";
        }
        // line 9
        if ((isset($context["PHRASE_SEARCH_DISABLED"]) ? $context["PHRASE_SEARCH_DISABLED"] : null)) {
            echo " <p><strong>";
            echo $this->env->getExtension('phpbb')->lang("PHRASE_SEARCH_DISABLED");
            echo "</strong></p>";
        }
        // line 10
        echo "
";
        // line 11
        if ((isset($context["SEARCH_TOPIC"]) ? $context["SEARCH_TOPIC"] : null)) {
            // line 12
            echo "\t<p class=\"return-link\">
\t\t<a class=\"arrow-";
            // line 13
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH_TOPIC"]) ? $context["U_SEARCH_TOPIC"] : null);
            echo "\">
\t\t\t<i class=\"icon fa-angle-";
            // line 14
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " fa-fw icon-black\" aria-hidden=\"true\"></i><span>";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_TOPIC");
            echo "</span>
\t\t</a>
\t</p>
";
        } else {
            // line 18
            echo "\t\t\t<p class=\"jumpbox-return\">
\t\t<!--<a href=\"http://localhost/phpBB3/viewforum.php?f=3\">-->
\t\t<a href=\"http://ec2-54-255-137-4.ap-southeast-1.compute.amazonaws.com/CAT/forum/viewforum.php?f=3\">< Back to \"CAT Forum\" </a>
\t</p>
";
        }
        // line 23
        echo "
";
        // line 24
        // line 25
        echo "
";
        // line 26
        if ((((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null)) || (isset($context["TOTAL_MATCHES"]) ? $context["TOTAL_MATCHES"] : null)) || (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null))) {
            // line 27
            echo "\t<div class=\"action-bar bar-top\">
<!--remove line 27 - 41-->
\t

\t\t";
            // line 31
            // line 32
            echo "
\t\t<!-- line 32-40 remove pagination -->
\t</div>
";
        }
        // line 36
        echo "
";
        // line 37
        if ((isset($context["S_SHOW_TOPICS"]) ? $context["S_SHOW_TOPICS"] : null)) {
            // line 38
            echo "
\t";
            // line 39
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()))) {
                // line 40
                echo "\t<div class=\"forumbg\">

\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"row-item\">
\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 46
                echo $this->env->getExtension('phpbb')->lang("TOPICS");
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 47
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 48
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 49
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">

\t\t";
                // line 55
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                    // line 56
                    echo "\t\t\t";
                    // line 57
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute($context["searchresults"], "S_ROW_COUNT", array()) % 2 == 0)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl class=\"row-item ";
                    // line 58
                    echo $this->getAttribute($context["searchresults"], "TOPIC_IMG_STYLE", array());
                    echo "\">
\t\t\t\t\t<dt";
                    // line 59
                    if (($this->getAttribute($context["searchresults"], "TOPIC_ICON_IMG", array()) && (isset($context["S_TOPIC_ICONS"]) ? $context["S_TOPIC_ICONS"] : null))) {
                        echo " style=\"background-image: url(";
                        echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                        echo $this->getAttribute($context["searchresults"], "TOPIC_ICON_IMG", array());
                        echo "); background-repeat: no-repeat;\"";
                    }
                    echo " title=\"";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_FOLDER_IMG_ALT", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 60
                    if (($this->getAttribute($context["searchresults"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_NEWEST_POST", array());
                        echo "\" class=\"row-item-link\"></a>";
                    }
                    // line 61
                    echo "\t\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t\t";
                    // line 62
                    // line 63
                    echo "\t\t\t\t\t\t\t";
                    if (($this->getAttribute($context["searchresults"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                        // line 64
                        echo "\t\t\t\t\t\t\t\t<a class=\"unread\" href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_NEWEST_POST", array());
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw icon-red icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 65
                        echo $this->env->getExtension('phpbb')->lang("NEW_POST");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 68
                    echo "\t\t\t\t\t\t\t<a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_TOPIC", array());
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_TITLE", array());
                    echo "</a>
\t\t\t\t\t\t\t";
                    // line 69
                    if (($this->getAttribute($context["searchresults"], "S_TOPIC_UNAPPROVED", array()) || $this->getAttribute($context["searchresults"], "S_POSTS_UNAPPROVED", array()))) {
                        // line 70
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_QUEUE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_UNAPPROVED");
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-question fa-fw icon-blue\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 71
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_UNAPPROVED");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 74
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "S_TOPIC_DELETED", array())) {
                        // line 75
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_QUEUE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_DELETED");
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-recycle fa-fw icon-green\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 76
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_DELETED");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 79
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "S_TOPIC_REPORTED", array())) {
                        // line 80
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_REPORT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_REPORTED");
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation fa-fw icon-red\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 81
                        echo $this->env->getExtension('phpbb')->lang("TOPIC_REPORTED");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 84
                    echo "\t\t\t\t\t\t\t<br />

\t\t\t\t\t\t\t";
                    // line 86
                    if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                        // line 87
                        echo "\t\t\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t\t\t";
                        // line 88
                        echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                        echo " ";
                        echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                        echo " ";
                        echo $this->getAttribute($context["searchresults"], "LAST_POST_AUTHOR_FULL", array());
                        echo " &laquo; <a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_LAST_POST", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                        echo "\">";
                        echo $this->getAttribute($context["searchresults"], "LAST_POST_TIME", array());
                        echo "</a>
\t\t\t\t\t\t\t\t\t<br />";
                        // line 89
                        echo $this->env->getExtension('phpbb')->lang("POSTED");
                        echo " ";
                        echo $this->env->getExtension('phpbb')->lang("IN");
                        echo " <a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_VIEW_FORUM", array());
                        echo "\">";
                        echo $this->getAttribute($context["searchresults"], "FORUM_TITLE", array());
                        echo "</a>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                        // line 91
                        if ($this->getAttribute($context["searchresults"], "TOPIC_REPLIES", array())) {
                            echo "<span class=\"responsive-show left-box\" style=\"display: none;\">";
                            echo $this->env->getExtension('phpbb')->lang("REPLIES");
                            echo $this->env->getExtension('phpbb')->lang("COLON");
                            echo " <strong>";
                            echo $this->getAttribute($context["searchresults"], "TOPIC_REPLIES", array());
                            echo "</strong></span>";
                        }
                        // line 92
                        echo "\t\t\t\t\t\t\t";
                    }
                    // line 93
                    echo "
\t\t\t\t\t\t\t<div class=\"responsive-hide\">
\t\t\t\t\t\t\t\t";
                    // line 95
                    if ($this->getAttribute($context["searchresults"], "S_HAS_POLL", array())) {
                        echo "<i class=\"icon fa-bar-chart fa-fw\" aria-hidden=\"true\"></i>";
                    }
                    // line 96
                    echo "\t\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "ATTACH_ICON_IMG", array())) {
                        echo "<i class=\"icon fa-paperclip fa-fw\" aria-hidden=\"true\"></i>";
                    }
                    // line 97
                    echo "\t\t\t\t\t\t\t\t";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_AUTHOR_FULL", array());
                    echo " &raquo; ";
                    echo $this->getAttribute($context["searchresults"], "FIRST_POST_TIME", array());
                    echo " &raquo; ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "FORUM_TITLE", array());
                    echo "</a>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t";
                    // line 100
                    if (twig_length_filter($this->env, $this->getAttribute($context["searchresults"], "pagination", array()))) {
                        // line 101
                        echo "\t\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t\t<span><i class=\"icon fa-clone fa-fw\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t";
                        // line 104
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["searchresults"], "pagination", array()));
                        foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                            // line 105
                            echo "\t\t\t\t\t\t\t\t\t";
                            if ($this->getAttribute($context["pagination"], "S_IS_PREV", array())) {
                                // line 106
                                echo "\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute($context["pagination"], "S_IS_CURRENT", array())) {
                                echo "<li class=\"active\"><span>";
                                echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute(                            // line 107
$context["pagination"], "S_IS_ELLIPSIS", array())) {
                                echo "<li class=\"ellipsis\"><span>";
                                echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute(                            // line 108
$context["pagination"], "S_IS_NEXT", array())) {
                                // line 109
                                echo "\t\t\t\t\t\t\t\t\t";
                            } else {
                                echo "<li><a class=\"button\" href=\"";
                                echo $this->getAttribute($context["pagination"], "PAGE_URL", array());
                                echo "\">";
                                echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                                echo "</a></li>
\t\t\t\t\t\t\t\t\t";
                            }
                            // line 111
                            echo "\t\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 112
                        echo "\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    }
                    // line 115
                    echo "\t\t\t\t\t\t\t";
                    // line 116
                    echo "
\t\t\t\t\t\t\t";
                    // line 117
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array('robertheim_topictags', '__main__'));
                    $this->env->loadTemplate('@robertheim_topictags/event/topiclist_row_append.html')->display($context);
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                    // line 118
                    echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"posts\">";
                    // line 120
                    echo $this->getAttribute($context["searchresults"], "TOPIC_REPLIES", array());
                    echo " <dfn>";
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo "</dfn></dd>
\t\t\t\t\t<dd class=\"views\">";
                    // line 121
                    echo $this->getAttribute($context["searchresults"], "TOPIC_VIEWS", array());
                    echo " <dfn>";
                    echo $this->env->getExtension('phpbb')->lang("VIEWS");
                    echo "</dfn></dd>
\t\t\t\t\t<dd class=\"lastpost\">
\t\t\t\t\t\t<span><dfn>";
                    // line 123
                    echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                    echo " </dfn>";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["searchresults"], "LAST_POST_AUTHOR_FULL", array());
                    echo "
\t\t\t\t\t\t\t";
                    // line 124
                    if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                        // line 125
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_LAST_POST", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-external-link-square fa-fw icon-lightgray icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 126
                        echo (isset($context["VIEW_LATEST_POST"]) ? $context["VIEW_LATEST_POST"] : null);
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 129
                    echo "\t\t\t\t\t\t\t<br />";
                    echo $this->getAttribute($context["searchresults"], "LAST_POST_TIME", array());
                    echo "
\t\t\t\t\t\t</span>
\t\t\t\t\t</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                    // line 134
                    // line 135
                    echo "\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 136
                echo "\t\t</ul>

\t\t</div>
\t</div>
\t";
            } else {
                // line 141
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 143
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            // line 147
            echo "
";
        } else {
            // line 149
            echo "
\t";
            // line 150
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                // line 151
                echo "\t\t";
                // line 152
                echo "\t\t<div class=\"search post ";
                if (($this->getAttribute($context["searchresults"], "S_ROW_COUNT", array()) % 2 == 1)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                if ($this->getAttribute($context["searchresults"], "S_POST_REPORTED", array())) {
                    echo " reported";
                }
                echo "\">
\t\t\t<div class=\"inner\">

\t";
                // line 155
                if ($this->getAttribute($context["searchresults"], "S_IGNORE_POST", array())) {
                    // line 156
                    echo "\t\t<div class=\"postbody\">
\t\t\t";
                    // line 157
                    echo $this->getAttribute($context["searchresults"], "L_IGNORE_POST", array());
                    echo "
\t\t</div>
\t";
                } else {
                    // line 160
                    echo "\t<!-- remove line 160 - 168 -->


\t\t<div class=\"postbody\">
\t\t\t<h3><a href=\"";
                    // line 164
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_POST", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "POST_SUBJECT", array());
                    echo "</a></h3>
\t\t\t<div class=\"content\">";
                    // line 165
                    echo $this->getAttribute($context["searchresults"], "MESSAGE", array());
                    echo "</div>
\t\t</div>
\t";
                }
                // line 168
                echo "
\t";
                // line 169
                if ( !$this->getAttribute($context["searchresults"], "S_IGNORE_POST", array())) {
                    // line 170
                    echo "\t\t<ul class=\"searchresults\">
\t\t\t<li>
\t\t\t\t<a href=\"";
                    // line 172
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_POST", array());
                    echo "\" class=\"arrow-";
                    echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                    echo "\">
\t\t\t\t\t<i class=\"icon fa-angle-";
                    // line 173
                    echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                    echo " fa-fw icon-black\" aria-hidden=\"true\"></i><span>";
                    echo $this->env->getExtension('phpbb')->lang("JUMP_TO_POST");
                    echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t</ul>
\t";
                }
                // line 178
                echo "
\t\t\t</div>
\t\t</div>
\t\t";
                // line 181
                // line 182
                echo "\t";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 183
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 185
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
        // line 190
        echo "
<!--remove line 219 -224 -->

\t<!-- remove line 200 - 208 -->


";
        // line 196
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "search_results.html", 196)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 197
        echo "
";
        // line 198
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "search_results.html", 198)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "search_results.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  619 => 198,  616 => 197,  604 => 196,  596 => 190,  585 => 185,  581 => 183,  576 => 182,  575 => 181,  570 => 178,  560 => 173,  554 => 172,  550 => 170,  548 => 169,  545 => 168,  539 => 165,  533 => 164,  527 => 160,  521 => 157,  518 => 156,  516 => 155,  502 => 152,  500 => 151,  495 => 150,  492 => 149,  488 => 147,  481 => 143,  477 => 141,  470 => 136,  464 => 135,  463 => 134,  454 => 129,  448 => 126,  441 => 125,  439 => 124,  431 => 123,  424 => 121,  418 => 120,  414 => 118,  409 => 117,  406 => 116,  404 => 115,  399 => 112,  393 => 111,  383 => 109,  381 => 108,  375 => 107,  368 => 106,  365 => 105,  361 => 104,  356 => 101,  354 => 100,  337 => 97,  332 => 96,  328 => 95,  324 => 93,  321 => 92,  312 => 91,  301 => 89,  287 => 88,  284 => 87,  282 => 86,  278 => 84,  272 => 81,  265 => 80,  262 => 79,  256 => 76,  249 => 75,  246 => 74,  240 => 71,  233 => 70,  231 => 69,  224 => 68,  218 => 65,  213 => 64,  210 => 63,  209 => 62,  206 => 61,  200 => 60,  189 => 59,  185 => 58,  176 => 57,  174 => 56,  170 => 55,  161 => 49,  157 => 48,  153 => 47,  149 => 46,  141 => 40,  139 => 39,  136 => 38,  134 => 37,  131 => 36,  125 => 32,  124 => 31,  118 => 27,  116 => 26,  113 => 25,  112 => 24,  109 => 23,  102 => 18,  93 => 14,  87 => 13,  84 => 12,  82 => 11,  79 => 10,  73 => 9,  64 => 8,  55 => 7,  38 => 5,  35 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <!-- EVENT search_results_header_before -->*/
/* */
/* <h2 class="searchresults-title"><!-- IF SEARCH_TITLE -->{SEARCH_TITLE}<!-- ELSE -->{SEARCH_MATCHES}<!-- ENDIF --><!-- IF SEARCH_WORDS -->{L_COLON} <a href="{U_SEARCH_WORDS}">{SEARCH_WORDS}</a><!-- ENDIF --></h2>*/
/* <!-- commented line 7 below 00>*/
/* <!-- IF SEARCHED_QUERY --><!-- &nbsp;<p>{L_SEARCHED_QUERY}{L_COLON} <strong>{SEARCHED_QUERY}</strong></p>--><!-- ENDIF -->*/
/* <!-- IF IGNORED_WORDS --> <p>{L_IGNORED_TERMS}{L_COLON} <strong>{IGNORED_WORDS}</strong></p><!-- ENDIF -->*/
/* <!-- IF PHRASE_SEARCH_DISABLED --> <p><strong>{L_PHRASE_SEARCH_DISABLED}</strong></p><!-- ENDIF -->*/
/* */
/* <!-- IF SEARCH_TOPIC -->*/
/* 	<p class="return-link">*/
/* 		<a class="arrow-{S_CONTENT_FLOW_BEGIN}" href="{U_SEARCH_TOPIC}">*/
/* 			<i class="icon fa-angle-{S_CONTENT_FLOW_BEGIN} fa-fw icon-black" aria-hidden="true"></i><span>{L_RETURN_TO_TOPIC}</span>*/
/* 		</a>*/
/* 	</p>*/
/* <!-- ELSE -->*/
/* 			<p class="jumpbox-return">*/
/* 		<!--<a href="http://localhost/phpBB3/viewforum.php?f=3">-->*/
/* 		<a href="http://ec2-54-255-137-4.ap-southeast-1.compute.amazonaws.com/CAT/forum/viewforum.php?f=3">< Back to "CAT Forum" </a>*/
/* 	</p>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT search_results_header_after -->*/
/* */
/* <!-- IF .pagination or SEARCH_MATCHES or TOTAL_MATCHES or PAGE_NUMBER -->*/
/* 	<div class="action-bar bar-top">*/
/* <!--remove line 27 - 41-->*/
/* 	*/
/* */
/* 		<!-- EVENT search_results_searchbox_after -->*/
/* */
/* 		<!-- line 32-40 remove pagination -->*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_SHOW_TOPICS -->*/
/* */
/* 	<!-- IF .searchresults -->*/
/* 	<div class="forumbg">*/
/* */
/* 		<div class="inner">*/
/* 		<ul class="topiclist">*/
/* 			<li class="header">*/
/* 				<dl class="row-item">*/
/* 					<dt><div class="list-inner">{L_TOPICS}</div></dt>*/
/* 					<dd class="posts">{L_REPLIES}</dd>*/
/* 					<dd class="views">{L_VIEWS}</dd>*/
/* 					<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 		</ul>*/
/* 		<ul class="topiclist topics">*/
/* */
/* 		<!-- BEGIN searchresults -->*/
/* 			<!-- EVENT search_results_topic_before -->*/
/* 			<li class="row<!-- IF searchresults.S_ROW_COUNT is even --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 				<dl class="row-item {searchresults.TOPIC_IMG_STYLE}">*/
/* 					<dt<!-- IF searchresults.TOPIC_ICON_IMG and S_TOPIC_ICONS --> style="background-image: url({T_ICONS_PATH}{searchresults.TOPIC_ICON_IMG}); background-repeat: no-repeat;"<!-- ENDIF --> title="{searchresults.TOPIC_FOLDER_IMG_ALT}">*/
/* 						<!-- IF searchresults.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{searchresults.U_NEWEST_POST}" class="row-item-link"></a><!-- ENDIF -->*/
/* 						<div class="list-inner">*/
/* 							<!-- EVENT topiclist_row_prepend -->*/
/* 							<!-- IF searchresults.S_UNREAD_TOPIC and not S_IS_BOT -->*/
/* 								<a class="unread" href="{searchresults.U_NEWEST_POST}">*/
/* 									<i class="icon fa-file fa-fw icon-red icon-md" aria-hidden="true"></i><span class="sr-only">{L_NEW_POST}</span>*/
/* 								</a>*/
/* 							<!-- ENDIF -->*/
/* 							<a href="{searchresults.U_VIEW_TOPIC}" class="topictitle">{searchresults.TOPIC_TITLE}</a>*/
/* 							<!-- IF searchresults.S_TOPIC_UNAPPROVED or searchresults.S_POSTS_UNAPPROVED -->*/
/* 								<a href="{searchresults.U_MCP_QUEUE}" title="{L_TOPIC_UNAPPROVED}">*/
/* 									<i class="icon fa-question fa-fw icon-blue" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_UNAPPROVED}</span>*/
/* 								</a>*/
/* 							<!-- ENDIF -->*/
/* 							<!-- IF searchresults.S_TOPIC_DELETED -->*/
/* 								<a href="{searchresults.U_MCP_QUEUE}" title="{L_TOPIC_DELETED}">*/
/* 									<i class="icon fa-recycle fa-fw icon-green" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_DELETED}</span>*/
/* 								</a>*/
/* 							<!-- ENDIF -->*/
/* 							<!-- IF searchresults.S_TOPIC_REPORTED -->*/
/* 								<a href="{searchresults.U_MCP_REPORT}" title="{L_TOPIC_REPORTED}">*/
/* 									<i class="icon fa-exclamation fa-fw icon-red" aria-hidden="true"></i><span class="sr-only">{L_TOPIC_REPORTED}</span>*/
/* 								</a>*/
/* 							<!-- ENDIF -->*/
/* 							<br />*/
/* */
/* 							<!-- IF not S_IS_BOT -->*/
/* 								<div class="responsive-show" style="display: none;">*/
/* 									{L_LAST_POST} {L_POST_BY_AUTHOR} {searchresults.LAST_POST_AUTHOR_FULL} &laquo; <a href="{searchresults.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{searchresults.LAST_POST_TIME}</a>*/
/* 									<br />{L_POSTED} {L_IN} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_TITLE}</a>*/
/* 								</div>*/
/* 							<!-- IF searchresults.TOPIC_REPLIES --><span class="responsive-show left-box" style="display: none;">{L_REPLIES}{L_COLON} <strong>{searchresults.TOPIC_REPLIES}</strong></span><!-- ENDIF -->*/
/* 							<!-- ENDIF -->*/
/* */
/* 							<div class="responsive-hide">*/
/* 								<!-- IF searchresults.S_HAS_POLL --><i class="icon fa-bar-chart fa-fw" aria-hidden="true"></i><!-- ENDIF -->*/
/* 								<!-- IF searchresults.ATTACH_ICON_IMG --><i class="icon fa-paperclip fa-fw" aria-hidden="true"></i><!-- ENDIF -->*/
/* 								{L_POST_BY_AUTHOR} {searchresults.TOPIC_AUTHOR_FULL} &raquo; {searchresults.FIRST_POST_TIME} &raquo; {L_IN} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_TITLE}</a>*/
/* 							</div>*/
/* */
/* 							<!-- IF .searchresults.pagination -->*/
/* 							<div class="pagination">*/
/* 								<span><i class="icon fa-clone fa-fw" aria-hidden="true"></i></span>*/
/* 								<ul>*/
/* 								<!-- BEGIN pagination -->*/
/* 									<!-- IF searchresults.pagination.S_IS_PREV -->*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_CURRENT --><li class="active"><span>{searchresults.pagination.PAGE_NUMBER}</span></li>*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_ELLIPSIS --><li class="ellipsis"><span>{L_ELLIPSIS}</span></li>*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_NEXT -->*/
/* 									<!-- ELSE --><li><a class="button" href="{searchresults.pagination.PAGE_URL}">{searchresults.pagination.PAGE_NUMBER}</a></li>*/
/* 									<!-- ENDIF -->*/
/* 								<!-- END pagination -->*/
/* 								</ul>*/
/* 							</div>*/
/* 							<!-- ENDIF -->*/
/* 							<!-- EVENT topiclist_row_topic_title_after -->*/
/* */
/* 							<!-- EVENT topiclist_row_append -->*/
/* 						</div>*/
/* 					</dt>*/
/* 					<dd class="posts">{searchresults.TOPIC_REPLIES} <dfn>{L_REPLIES}</dfn></dd>*/
/* 					<dd class="views">{searchresults.TOPIC_VIEWS} <dfn>{L_VIEWS}</dfn></dd>*/
/* 					<dd class="lastpost">*/
/* 						<span><dfn>{L_LAST_POST} </dfn>{L_POST_BY_AUTHOR} {searchresults.LAST_POST_AUTHOR_FULL}*/
/* 							<!-- IF not S_IS_BOT -->*/
/* 								<a href="{searchresults.U_LAST_POST}" title="{L_GOTO_LAST_POST}">*/
/* 									<i class="icon fa-external-link-square fa-fw icon-lightgray icon-md" aria-hidden="true"></i><span class="sr-only">{VIEW_LATEST_POST}</span>*/
/* 								</a>*/
/* 							<!-- ENDIF -->*/
/* 							<br />{searchresults.LAST_POST_TIME}*/
/* 						</span>*/
/* 					</dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 			<!-- EVENT search_results_topic_after -->*/
/* 		<!-- END searchresults -->*/
/* 		</ul>*/
/* */
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ELSE -->*/
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* 			<strong>{L_NO_SEARCH_RESULTS}</strong>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- ELSE -->*/
/* */
/* 	<!-- BEGIN searchresults -->*/
/* 		<!-- EVENT search_results_post_before -->*/
/* 		<div class="search post <!-- IF searchresults.S_ROW_COUNT is odd -->bg1<!-- ELSE -->bg2<!-- ENDIF --><!-- IF searchresults.S_POST_REPORTED --> reported<!-- ENDIF -->">*/
/* 			<div class="inner">*/
/* */
/* 	<!-- IF searchresults.S_IGNORE_POST -->*/
/* 		<div class="postbody">*/
/* 			{searchresults.L_IGNORE_POST}*/
/* 		</div>*/
/* 	<!-- ELSE -->*/
/* 	<!-- remove line 160 - 168 -->*/
/* */
/* */
/* 		<div class="postbody">*/
/* 			<h3><a href="{searchresults.U_VIEW_POST}">{searchresults.POST_SUBJECT}</a></h3>*/
/* 			<div class="content">{searchresults.MESSAGE}</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF not searchresults.S_IGNORE_POST -->*/
/* 		<ul class="searchresults">*/
/* 			<li>*/
/* 				<a href="{searchresults.U_VIEW_POST}" class="arrow-{S_CONTENT_FLOW_END}">*/
/* 					<i class="icon fa-angle-{S_CONTENT_FLOW_END} fa-fw icon-black" aria-hidden="true"></i><span>{L_JUMP_TO_POST}</span>*/
/* 				</a>*/
/* 			</li>*/
/* 		</ul>*/
/* 	<!-- ENDIF -->*/
/* */
/* 			</div>*/
/* 		</div>*/
/* 		<!-- EVENT search_results_post_after -->*/
/* 	<!-- BEGINELSE -->*/
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* 			<strong>{L_NO_SEARCH_RESULTS}</strong>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- END searchresults -->*/
/* <!-- ENDIF -->*/
/* */
/* <!--remove line 219 -224 -->*/
/* */
/* 	<!-- remove line 200 - 208 -->*/
/* */
/* */
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
