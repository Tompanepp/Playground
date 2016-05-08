<?php

/*
  Author: Praise Tompane
  Date: 2015-07-11
  Purpose:
  This file handles the configuration of all the table adapters for all the datasets
  The service manager will create these adapters when the module loads
  The adapters will them be accessibl(mostly used in the controllers) using the ServiceLocator object's get (e.g $sm->get('Entityapi\Model\BookingTable')
 */

use Entityapi\Model\BookingTable;
use Entityapi\Model\BookingstatusTable;
use Entityapi\Model\CompanyTable;
use Entityapi\Model\CompanyServiceTable;
use Entityapi\Model\EmployeeTable;
use Entityapi\Model\EmployeeServiceTable;
use Entityapi\Model\GalleryTable;
use Entityapi\Model\RoleTable;
use Entityapi\Model\ServicetypeTable;
use Entityapi\Model\StatusTable;
use Entityapi\Model\UserTable;
use Entityapi\Model\UserRoleTable;

use Zend\Db\TableGateway\TableGateway;
use Zend\Db\ResultSet\HydratingResultSet;

return array(
    'factories' => array(
        'Entityapi\Model\BookingTable' => function($sm) {
            $tableGateway = $sm->get('BookingTableGateway');
            $table = new BookingTable($tableGateway);
            return $table;
        },
        'BookingTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('booking', $dbAdapter, null, $resultSetPrototype);
        },
                
        'Entityapi\Model\BookingstatusTable' => function($sm) {
            $tableGateway = $sm->get('BookingstatusTableGateway');
            $table = new BookingstatusTable($tableGateway);
            return $table;
        },
        'BookingstatusTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('booking_status', $dbAdapter, null, $resultSetPrototype);
        },
                
        'Entityapi\Model\CompanyTable' => function($sm) {
            $tableGateway = $sm->get('CompanyTableGateway');
            $table = new CompanyTable($tableGateway);
            return $table;
        },
        'CompanyTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('company', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\CompanyServiceTable' => function($sm) {
            $tableGateway = $sm->get('CompanyServiceTableGateway');
            $table = new CompanyServiceTable($tableGateway);
            return $table;
        },
        'CompanyServiceTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('company_service', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\EmployeeTable' => function($sm) {
            $tableGateway = $sm->get('EmployeeTableGateway');
            $table = new EmployeeTable($tableGateway);
            return $table;
        },
        'EmployeeTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('employee', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\EmployeeserviceTable' => function($sm) {
            $tableGateway = $sm->get('EmployeeServiceTableGateway');
            $table = new EmployeeServiceTable($tableGateway);
            return $table;
        },
        'EmployeeServiceTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('employee_service', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\GalleryTable' => function($sm) {
            $tableGateway = $sm->get('GalleryTableGateway');
            $table = new GalleryTable($tableGateway);
            return $table;
        },
        'GalleryTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('gallery', $dbAdapter, null, $resultSetPrototype);
        },
                
        'Entityapi\Model\RoleTable' => function($sm) {
            $tableGateway = $sm->get('RoleTableGateway');
            $table = new RoleTable($tableGateway);
            return $table;
        },
        'RoleTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('role', $dbAdapter, null, $resultSetPrototype);
        },
                
                
                
        'Entityapi\Model\ServicetypeTable' => function($sm) {
            $tableGateway = $sm->get('ServiceTypeTableGateway');
            $table = new ServicetypeTable($tableGateway);
            return $table;
        },
        'ServiceTypeTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('service_type', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\StatusTable' => function($sm) {
            $tableGateway = $sm->get('StatusTableGateway');
            $table = new StatusTable($tableGateway);
            return $table;
        },
        'StatusTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('status', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\UserTable' => function($sm) {
            $tableGateway = $sm->get('UserTableGateway');
            $table = new UserTable($tableGateway);
            return $table;
        },
        'UserTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('user', $dbAdapter, null, $resultSetPrototype);
        },
                
                
        'Entityapi\Model\UserRoleTable' => function($sm) {
            $tableGateway = $sm->get('UserRoleTableGateway');
            $table = new UserRoleTable($tableGateway);
            return $table;
        },
        'UserRoleTableGateway' => function ($sm) {
            $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
            $resultSetPrototype = new HydratingResultSet();

            return new TableGateway('user_role', $dbAdapter, null, $resultSetPrototype);
        },
    )
);
