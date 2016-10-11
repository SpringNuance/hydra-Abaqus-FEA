from setuptools import setup

setup(
    name='hydra-utils',
    version='0.1.0.dev1',

    description='Polihydra python utilities',

    url='http://www.polihydra.org',

    author='Stefano Miccoli/Polihydra project',
    author_email='stefano.miccoli@polimi.it',

    license='MIT',

    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 3',
        ],

    py_modules=['gencoh', 'npz2mat'],

    install_requires=['numpy', 'scipy'],

    entry_points={
        'console_scripts': ['gencoh = gencoh:main',
                            'npz2mat = npz2mat:main', ],
        },
    )
