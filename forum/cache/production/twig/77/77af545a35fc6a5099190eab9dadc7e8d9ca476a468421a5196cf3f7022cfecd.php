<?php

/* @robertheim_topictags/css_includes.html */
class __TwigTemplate_4a7471ddddff5ad49ff9f5d2fa6a40380db704e3858f1c90c025acae03594ce5 extends Twig_Template
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
        if ((isset($context["S_RH_TOPICTAGS_INCLUDE_NG_TAGS_INPUT"]) ? $context["S_RH_TOPICTAGS_INCLUDE_NG_TAGS_INPUT"] : null)) {
            // line 2
            echo "\t";
            if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
                // line 3
                echo "\t\t";
                $asset_file = "//cdnjs.cloudflare.com/ajax/libs/ng-tags-input/2.1.1-1/ng-tags-input.min.css";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    }
                    $asset->add_assets_version('5');
                }
                $this->getEnvironment()->get_assets_bag()->add_stylesheet($asset);                // line 4
                echo "\t";
            } else {
                // line 5
                echo "\t\t";
                $asset_file = "@robertheim_topictags/../angular/ng-tags-input.min.css";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    }
                    $asset->add_assets_version('5');
                }
                $this->getEnvironment()->get_assets_bag()->add_stylesheet($asset);                // line 6
                echo "\t";
            }
        }
        // line 8
        echo "
";
        // line 9
        if (0) {
            echo "order matters, because we override some stuff";
        }
        // line 10
        echo "
";
        // line 11
        if ((isset($context["S_RH_TOPICTAGS_INCLUDE_CSS"]) ? $context["S_RH_TOPICTAGS_INCLUDE_CSS"] : null)) {
            // line 12
            echo "\t";
            $asset_file = "@robertheim_topictags/../theme/rh_topictags.css";
            $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
            if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                $asset_path = $asset->get_path();                $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                if (!file_exists($local_file)) {
                    $local_file = $this->getEnvironment()->findTemplate($asset_path);
                    $asset->set_path($local_file, true);
                }
                $asset->add_assets_version('5');
            }
            $this->getEnvironment()->get_assets_bag()->add_stylesheet($asset);        }
        // line 14
        echo "
";
        // line 15
        if ((isset($context["S_RH_TOPICTAGS_INCLUDE_CSS_FROM_ACP"]) ? $context["S_RH_TOPICTAGS_INCLUDE_CSS_FROM_ACP"] : null)) {
            // line 16
            echo "\t";
            $asset_file = "@robertheim_topictags/../../prosilver/theme/rh_topictags.css";
            $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
            if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                $asset_path = $asset->get_path();                $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                if (!file_exists($local_file)) {
                    $local_file = $this->getEnvironment()->findTemplate($asset_path);
                    $asset->set_path($local_file, true);
                }
                $asset->add_assets_version('5');
            }
            $this->getEnvironment()->get_assets_bag()->add_stylesheet($asset);        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/css_includes.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  85 => 16,  83 => 15,  80 => 14,  67 => 12,  65 => 11,  62 => 10,  58 => 9,  55 => 8,  51 => 6,  39 => 5,  36 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF S_RH_TOPICTAGS_INCLUDE_NG_TAGS_INPUT -->*/
/* 	<!-- IF S_ALLOW_CDN -->*/
/* 		<!-- INCLUDECSS //cdnjs.cloudflare.com/ajax/libs/ng-tags-input/2.1.1-1/ng-tags-input.min.css -->*/
/* 	<!-- ELSE -->*/
/* 		<!-- INCLUDECSS @robertheim_topictags/../angular/ng-tags-input.min.css -->*/
/* 	<!-- ENDIF -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF 0 -->order matters, because we override some stuff<!-- ENDIF -->*/
/* */
/* <!-- IF S_RH_TOPICTAGS_INCLUDE_CSS -->*/
/* 	<!-- INCLUDECSS @robertheim_topictags/../theme/rh_topictags.css -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_RH_TOPICTAGS_INCLUDE_CSS_FROM_ACP -->*/
/* 	<!-- INCLUDECSS @robertheim_topictags/../../prosilver/theme/rh_topictags.css -->*/
/* <!-- ENDIF -->*/
/* */
