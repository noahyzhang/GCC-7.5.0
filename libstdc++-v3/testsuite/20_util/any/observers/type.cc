// { dg-options "-std=gnu++17" }
// { dg-do run }

// Copyright (C) 2014-2017 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING3.  If not see
// <http://www.gnu.org/licenses/>.

#include <any>
#include <testsuite_hooks.h>

using std::any;

void test01()
{
  any x;
  VERIFY( x.type() == typeid(void) );
  x = 1;
  VERIFY( x.type() == typeid(int) );
  x = any();
  VERIFY( x.type() == typeid(void) );
}

int main()
{
  test01();
}
