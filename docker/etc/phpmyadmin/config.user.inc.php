<?php
/**
 * Created by PhpStorm.
 * Description:
 * FileName: config.user.inc.php
 * User: Oleksandr Shkuropat
 * Date: 11.03.2021
 * Time: 15:22
 */
$sessionValidity = 3600 * 24 * 365; // one year

$cfg['LoginCookieValidity'] = $sessionValidity;
ini_set('session.gc_maxlifetime', $sessionValidity);
