class pkg-easyinstall::v0_6_c11 {
    include pkg-easyinstall

    exec {
        'easy_install' :
            command => '/usr/bin/wget http://pypi.python.org/packages/2.6/s/setuptools/setuptools-0.6c11-py2.6.egg && /bin/sh setuptools-0.6c11-py2.6.egg',
            creates => '/usr/bin/easy_install',
            cwd => '/tmp/',
            before => [
                Class['pkg-easyinstall'],
            ],
            ;
    }
}
