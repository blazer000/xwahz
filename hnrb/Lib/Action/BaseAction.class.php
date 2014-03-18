<?php
class BaseAction extends Action
{
    protected function _initialize()
    {
        define('RES', TMPL_PATH. GROUP_NAME . '/default/common');
        define('STATICS', TMPL_PATH . 'Static');
        $this->assign('action', $this->getActionName());
        echo STATICS;
    }
}