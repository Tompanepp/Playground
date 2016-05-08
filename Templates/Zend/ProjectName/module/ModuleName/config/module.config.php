
<?php

//This is where you configure your module
//ServiceManager passes the configs to relevant components
return array(
    'controllers' => array(
        'invokables' => array(
            'Entityapi\Controller\Booking' => 'Entityapi\Controller\BookingController',
            'Entityapi\Controller\Bookingstatus' => 'Entityapi\Controller\BookingstatusController',
            'Entityapi\Controller\Company' => 'Entityapi\Controller\CompanyController',
            'Entityapi\Controller\Companyservice' => 'Entityapi\Controller\CompanyserviceController',
            'Entityapi\Controller\Employee' => 'Entityapi\Controller\EmployeeController',
            'Entityapi\Controller\Employeeservice' => 'Entityapi\Controller\EmployeeserviceController',
            'Entityapi\Controller\Gallery' => 'Entityapi\Controller\GalleryController',
            'Entityapi\Controller\Role' => 'Entityapi\Controller\RoleController',
            'Entityapi\Controller\Servicetype' => 'Entityapi\Controller\ServicetypeController',
            'Entityapi\Controller\Status' => 'Entityapi\Controller\StatusController',
            'Entityapi\Controller\User' => 'Entityapi\Controller\UserController',
            'Entityapi\Controller\Userrole' => 'Entityapi\Controller\UserroleController',
        ),
    ),
//configuration for routes
//rotues URL to action
    'router' => array(
        'routes' => array(
            'entityapi' => array(
                'type' => 'Literal',
                'options' => array(
                    'route' => '/entityapi',
                ),
                'child_routes' => array(
                    'company' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/company[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Company',
                            ),
                        ),
                    ),
                    'role' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/role[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Role',
                            ),
                        ),
                    ),
                    'bookingstatus' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/bookingstatus[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Bookingstatus',
                            ),
                        ),
                    ),
                    'booking' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/booking[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Booking',
                            ),
                        ),
                    ),
                    'companyservice' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/companyservice[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Companyservice',
                            ),
                        ),
                    ),
                    'employee' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/employee[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Employee',
                            ),
                        ),
                    ),
                    'employeeservice' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/employeeservice[/:id]',//[/:companycode][/:username][/:servicetypeid]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Employeeservice',
                            ),
                        ),
                    ),
                    'gallery' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/gallery[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Gallery',
                            ),
                        ),
                    ),
                    'servicetype' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/servicetype[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Servicetype',
                            ),
                        ),
                    ),
                    'status' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/status[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Status',
                            ),
                        ),
                    ),
                    'user' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/user[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\User',
                            ),
                        ),
                    ),
                    'userrole' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/userrole[/:id]',
                            'defaults' => array(
                                'controller' => 'Entityapi\Controller\Userrole',
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'strategies' => array(
            'ViewJsonStrategy'
        ),
    )
);

