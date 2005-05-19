use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Data::RandomPerson',
    VERSION_FROM => 'lib/Data/RandomPerson.pm',
    EXE_FILES    => [ ],
    PREREQ_PM    => {
        'Date::Calc' => 0,
    },
);
