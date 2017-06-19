<?php
namespace Album;

/*Neccessary to confiure the ServiceManager*/
/*We want to only create one instance of the AlbumTable class*/
use Album\Model\Album;
use Album\Model\AlbumTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
/*******************************************/

use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
use Zend\ModuleManager\Feature\ConfigProviderInterface;


//Need this for Zend 2
//use Zend\ModuleManager\Feature\ServiceProviderInterface;

class Module implements AutoloaderProviderInterface, ConfigProviderInterface
{
    public function getAutoloaderConfig()
    {
        //used for loading classes 
        //follows this standard PSR-0 rules.
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php', //directory of the Module.php + the autoloader file
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }
    
   
    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
    
    
    public function getServiceConfig(){
     return array(
        'factories' => array(
            'Album\Model\AlbumTable' => function($sm) {
             $tableGateway = $sm->get('AlbumTableGateway');
            $table = new AlbumTable($tableGateway);
             return $table;
         },
    'AlbumTableGateway' => function ($sm) {
             $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Album());
             return new TableGateway('album', $dbAdapter, null, $resultSetPrototype);
            },
         ),
     );
     }
}