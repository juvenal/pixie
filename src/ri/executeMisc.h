//////////////////////////////////////////////////////////////////////
//
//                             Pixie
//
// Copyright � 1999 - 2003, Okan Arikan
//
// Contact: okan@cs.berkeley.edu
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public
// License as published by the Free Software Foundation; either
// version 2 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
// 
// You should have received a copy of the GNU General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
//
//  File				:	executeMisc.h
//  Classes				:	-
//  Description			:	This file implements the main shader execution
//
////////////////////////////////////////////////////////////////////////
#ifndef EXECUTEMISC_H
#define EXECUTEMISC_H

#include "common/global.h"
#include "common/algebra.h"
#include "shader.h"
#include "shading.h"

///////////////////////////////////////////////////////////////////////
// Class				:	CRaySample
// Description			:	Holds info about a ray sample
// Comments				:	-
// Date last edited		:	6/13/2004
class	CRaySample {
public:
		float		*res;	// Where the result will be stored
		vector		from;	// Origin
		vector		to;		// Destination point
};

#endif




