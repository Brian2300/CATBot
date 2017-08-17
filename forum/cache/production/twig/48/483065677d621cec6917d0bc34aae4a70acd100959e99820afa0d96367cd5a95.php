<?php

/* @robertheim_topictags/js_includes.html */
class __TwigTemplate_a161d6d6454d31a8a5f87353e0d46b8d495578b5d519171c81774dee4663cec0 extends Twig_Template
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
                $asset_file = "//ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    }
                    $asset->add_assets_version('5');
                }
                $this->getEnvironment()->get_assets_bag()->add_script($asset);                // line 4
                echo "\t";
            } else {
                // line 5
                echo "\t\t";
                $asset_file = "@robertheim_topictags/../angular/angular.min.js";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    }
                    $asset->add_assets_version('5');
                }
                $this->getEnvironment()->get_assets_bag()->add_script($asset);                // line 6
                echo "\t";
            }
            // line 7
            echo "
\t";
            // line 8
            if (0) {
                // line 9
                echo "\t\tThe ng-tags-input has an important bug regarding regex modifiers. We implemented a custom
\t\tworkaround for version 2.1.1-1, shipped with the extension. There exists a PR on GitHub
\t\twhich still is not merged https://github.com/mbenford/ngTagsInput/issues/278 .
\t\tWhen the PR is merged we should update the whole lib and provide CDN, e.g., for 2.1.1-1:
\t\tINCLUDEJS //cdnjs.cloudflare.com/ajax/libs/ng-tags-input/2.1.1-1/ng-tags-input.min.js
\t";
            }
            // line 15
            echo "\t";
            $asset_file = "@robertheim_topictags/../angular/ng-tags-input.2.1.1-1.workaroundissue278.min.js";
            $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
            if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                $asset_path = $asset->get_path();                $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                if (!file_exists($local_file)) {
                    $local_file = $this->getEnvironment()->findTemplate($asset_path);
                    $asset->set_path($local_file, true);
                }
                $asset->add_assets_version('5');
            }
            $this->getEnvironment()->get_assets_bag()->add_script($asset);            // line 16
            echo "
\t";
            // line 17
            $asset_file = "@robertheim_topictags/../angular/taginput.app.js";
            $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
            if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                $asset_path = $asset->get_path();                $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                if (!file_exists($local_file)) {
                    $local_file = $this->getEnvironment()->findTemplate($asset_path);
                    $asset->set_path($local_file, true);
                }
                $asset->add_assets_version('5');
            }
            $this->getEnvironment()->get_assets_bag()->add_script($asset);        }
    }

    public function getTemplateName()
    {
        return "@robertheim_topictags/js_includes.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 17,  79 => 16,  67 => 15,  59 => 9,  57 => 8,  54 => 7,  51 => 6,  39 => 5,  36 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF S_RH_TOPICTAGS_INCLUDE_NG_TAGS_INPUT -->*/
/* 	<!-- IF S_ALLOW_CDN -->*/
/* 		<!-- INCLUDEJS //ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js -->*/
/* 	<!-- ELSE -->*/
/* 		<!-- INCLUDEJS @robertheim_topictags/../angular/angular.min.js -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF 0 -->*/
/* 		The ng-tags-input has an important bug regarding regex modifiers. We implemented a custom*/
/* 		workaround for version 2.1.1-1, shipped with the extension. There exists a PR on GitHub*/
/* 		which still is not merged https://github.com/mbenford/ngTagsInput/issues/278 .*/
/* 		When the PR is merged we should update the whole lib and provide CDN, e.g., for 2.1.1-1:*/
/* 		INCLUDEJS //cdnjs.cloudflare.com/ajax/libs/ng-tags-input/2.1.1-1/ng-tags-input.min.js*/
/* 	<!-- ENDIF -->*/
/* 	<!-- INCLUDEJS @robertheim_topictags/../angular/ng-tags-input.2.1.1-1.workaroundissue278.min.js -->*/
/* */
/* 	<!-- INCLUDEJS @robertheim_topictags/../angular/taginput.app.js -->*/
/* <!-- ENDIF -->*/
/* */
