/******************************************************************************
 * Spine Runtimes Software License
 * Version 2.3
 *
 * Copyright (c) 2013-2015, Esoteric Software
 * All rights reserved.
 *
 * You are granted a perpetual, non-exclusive, non-sublicensable and
 * non-transferable license to use, install, execute and perform the Spine
 * Runtimes Software (the "Software") and derivative works solely for personal
 * or internal use. Without the written permission of Esoteric Software (see
 * Section 2 of the Spine Software License Agreement), you may not (a) modify,
 * translate, adapt or otherwise create derivative works, improvements of the
 * Software or develop new applications using the Software or (b) remove,
 * delete, alter or obscure any trademarks or any copyright, trademark, patent
 * or other intellectual property or proprietary rights notices on or in the
 * Software, including any copy thereof. Redistributions in binary or source
 * form must include this license and terms.
 *
 * THIS SOFTWARE IS PROVIDED BY ESOTERIC SOFTWARE "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 * EVENT SHALL ESOTERIC SOFTWARE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************/

package spine;

import spine.compat.ArgumentError;

class TransformConstraintData
{
    public var bones(get, never) : Array<BoneData>;
    public var name(get, never) : String;

    @:allow(spine)
    private var _name : String;
    @:allow(spine)
    private var _bones : Array<BoneData> = new Array<BoneData>();
    public var target : BoneData;
    public var rotateMix : Float = 0;
    public var translateMix : Float = 0;
    public var scaleMix : Float = 0;
    public var shearMix : Float = 0;
    public var offsetRotation : Float = 0;
    public var offsetX : Float = 0;
    public var offsetY : Float = 0;
    public var offsetScaleX : Float = 0;
    public var offsetScaleY : Float = 0;
    public var offsetShearY : Float = 0;
    
    public function new(name : String)
    {
        if (name == null)
        {
            throw new ArgumentError("name cannot be null.");
        }
        _name = name;
    }
    
    private function get_bones() : Array<BoneData>
    {
        return _bones;
    }
    
    private function get_name() : String
    {
        return _name;
    }
    
    public function toString() : String
    {
        return _name;
    }
}


