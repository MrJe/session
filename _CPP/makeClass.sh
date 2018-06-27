#!/bin/bash

if [ $# == 0 ]
then
	echo "usage : sh makeClass class_name_1 class_name_2 ...";
	exit;
fi

PATH_INC=./inc
PATH_SRC=./src

if [ ! -e $PATH_INC ]
then
	mkdir $PATH_INC
fi
if [ ! -e $PATH_SRC ]
then
	mkdir $PATH_SRC
fi

for arg in ${@}
	do
	CLASS_INC=$( echo ${arg}_CLASS_HPP | tr a-z A-Z )

	HPP=$PATH_INC/$arg.class.hpp
	echo -e "#ifndef $CLASS_INC"                                                               >> $HPP
	echo -e "# define $CLASS_INC\n"                                                            >> $HPP
	echo -e "# include <iostream>"                                                             >> $HPP
	echo -e "# include <string>\n"                                                             >> $HPP
	echo -e "class\t\t$arg {\n"                                                                >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "/* ** P U B L I C *********************************************************** */" >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "public:"                                                                          >> $HPP
	echo -e "\t$arg( void );"                                                                  >> $HPP
	echo -e "\t$arg( $arg const & src );"                                                      >> $HPP
	echo -e "\tvirtual ~$arg( void );\n"                                                       >> $HPP
	echo -e "\t$arg &\t\toperator = ( $arg const & rhs );\n"                                   >> $HPP
	echo -e "\t// OPERATORS\n"                                                                 >> $HPP
	echo -e "\t// GET & SET\n"                                                                 >> $HPP
	echo -e "\t// FUNCTIONS\n"                                                                 >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "/* ** P R O T E C T E D ***************************************************** */" >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "protected:\n"                                                                     >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "/* ** P R I V A T E ********************************************************* */" >> $HPP
	echo -e "/* ************************************************************************** */" >> $HPP
	echo -e "private:\n\n};\n"                                                                 >> $HPP
	echo -e "#endif"                                                                           >> $HPP

	CPP=$PATH_SRC/$arg.class.cpp
	echo -e "#include <iostream>"                                                              >> $CPP
	echo -e "#include \"$arg.class.hpp\"\n"                                                    >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e "/* ** C O P L I E N ' S  F O R M ******************************************** */" >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e "$arg::$arg( void ) {"                                                             >> $CPP
	echo -e "\treturn;\n}\n"                                                                   >> $CPP
	echo -e "$arg::$arg( $arg const & src ) {"                                                 >> $CPP
	echo -e "\t*this = src;"                                                                   >> $CPP
	echo -e "\treturn;\n}\n"                                                                   >> $CPP
	echo -e "$arg::~$arg( void ) {"                                                            >> $CPP
	echo -e "\treturn;\n}\n"                                                                   >> $CPP
	echo -e "$arg &\t\t$arg::operator = ( $arg const & rhs ) {"                                >> $CPP
	echo -e "\treturn (*this);\n}\n"                                                           >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e "/* ** O P E R A T O R S ***************************************************** */" >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e ""                                                                                 >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e "/* ** G E T & S E T ********************************************************* */" >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e ""                                                                                 >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e "/* ** F U N C T I O N S ***************************************************** */" >> $CPP
	echo -e "/* ************************************************************************** */" >> $CPP
	echo -e ""                                                                                 >> $CPP
done
