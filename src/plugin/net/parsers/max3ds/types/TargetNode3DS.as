/*
 * Copyright (c) 2012 by Gary Paluk, all rights reserved.
 * Plugin.IO - http://www.plugin.io
 * 
 * Copyright (c) 1996-2008 by Jan Eric Kyprianidis, all rights reserved.
 * 
 * This program is free  software: you can redistribute it and/or modify 
 * it under the terms of the GNU Lesser General Public License as published 
 * by the Free Software Foundation, either version 3 of the License, or 
 * (at your option) any later version.
 * 
 * This program  is  distributed in the hope that it will be useful, 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
 * GNU Lesser General Public License for more details.
 * 
 * You should  have received a copy of the GNU Lesser General Public License
 * along with  this program; If not, see <http://www.gnu.org/licenses/>. 
 */
package plugin.net.parsers.max3ds.types 
{
	import plugin.net.parsers.max3ds.enum.Node3DSType;
	import plugin.net.parsers.max3ds.enum.Track3DSType;
	import plugin.net.parsers.max3ds.errors.Parser3DSError;
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class TargetNode3DS extends Node3DS 
	{
		
		public var pos: Array = Vertex3DS.create();
		public var posTrack: Track3DS = new Track3DS( Track3DSType.VECTOR );
		
		public function TargetNode3DS( type: Node3DSType ) 
		{
			super( type );
			switch( type )
			{
				case Node3DSType.CAMERA_TARGET:
				case Node3DSType.SPOTLIGHT_TARGET:
					return;
				default:
					throw new Parser3DSError( "Invalid target node type." );
			}
		}
		
	}

}