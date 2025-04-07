package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsCommandList')
@:unreflective
@:structAccess
private extern class NativeGsCommandList {
    public var count: Int;

    inline public function begin(): GsCommandList {
        Genesis.commandListBegin(this);
        return this;
    }

    inline public function end(): GsCommandList {
        Genesis.commandListEnd(this);
        return this;
    }

    inline public function submit(): GsCommandList {
        Genesis.commandListSubmit(this);
        return this;
    }

    inline public function clear(flags: GsClearFlags, r: Float = 0, g: Float = 0, b: Float = 0, a: Float = 1): GsCommandList {
        Genesis.clear(this, flags, r, g, b, a);
        return this;
    }

    inline public function setViewport(x: Int, y: Int, width: Int, height: Int): GsCommandList {
        Genesis.setViewport(this, x, y, width, height);
        return this;
    }

    inline public function discard(): GsCommandList {
        Genesis.commandListClear(this);
        return this;
    }

    inline public function usePipeline(pipeline: GsPipeline): GsCommandList {
        Genesis.usePipeline(this, pipeline);
        return this;
    }

    inline public function useBuffer(buffer: GsBuffer): GsCommandList {
        Genesis.useBuffer(this, buffer);
        return this;
    }

    inline public function useTexture(texture: GsTexture, slot: Int): GsCommandList {
        Genesis.useTexture(this, texture, slot);
        return this;
    }

    inline public function useFramebuffer(framebuffer: GsFramebuffer): GsCommandList {
        Genesis.useFramebuffer(this, framebuffer);
        return this;
    }

    inline public function drawArrays(start: Int, count: Int): GsCommandList {
        Genesis.drawArrays(this, start, count);
        return this;
    }

    inline public function drawIndexed(count: Int): GsCommandList {
        Genesis.drawIndexed(this, count);
        return this;
    }

    inline public function setScissor(x: Int, y: Int, width: Int, height: Int): GsCommandList {
        Genesis.setScissor(this, x, y, width, height);
        return this;
    }

    inline public function disableScissor(): GsCommandList {
        Genesis.disableScissor(this);
        return this;
    }

    inline public function setInt(location: GsUniformLocation, value: Int): GsCommandList {
        Genesis.uniformSetInt(this, location, value);
        return this;
    }

    inline public function setFloat(location: GsUniformLocation, value: Float): GsCommandList {
        Genesis.uniformSetFloat(this, location, value);
        return this;
    }

    inline public function setVec2(location: GsUniformLocation, x: Float, y: Float): GsCommandList {
        Genesis.uniformSetVec2(this, location, x, y);
        return this;
    }

    inline public function setVec3(location: GsUniformLocation, x: Float, y: Float, z: Float): GsCommandList {
        Genesis.uniformSetVec3(this, location, x, y, z);
        return this;
    }

    inline public function setVec4(location: GsUniformLocation, x: Float, y: Float, z: Float, w: Float): GsCommandList {
        Genesis.uniformSetVec4(this, location, x, y, z, w);
        return this;
    }

    inline public function setMat4(location: GsUniformLocation, m00: Float, m01: Float, m02: Float, m03: Float, m10: Float, m11: Float, m12: Float, m13: Float, m20: Float, m21: Float, m22: Float, m23: Float, m30: Float, m31: Float, m32: Float, m33: Float): GsCommandList {
        Genesis.uniformSetMat4(
            this, location,
            m00, m01, m02, m03,
            m10, m11, m12, m13,
            m20, m21, m22, m23,
            m30, m31, m32, m33
        );
        return this;
    }

    inline public function setMat4Array(location: GsUniformLocation, data: Array<Float>): GsCommandList {
        Genesis.uniformSetMat4(
            this, location,
            data[0], data[1], data[2], data[3],
            data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11],
            data[12], data[13], data[14], data[15]
        );
        return this;
    }

    inline public function copyTexture(src: GsTexture, dst: GsTexture): GsCommandList {
        Genesis.copyTexture(this, src, dst);
        return this;
    }

    inline public function resolveTexture(src: GsTexture, dst: GsTexture): GsCommandList {
        Genesis.resolveTexture(this, src, dst);
        return this;
    }

    inline public function copyTexturePartial(src: GsTexture, dst: GsTexture, srcX: Int, srcY: Int, dstX: Int, dstY: Int, width: Int, height: Int): GsCommandList {
        Genesis.copyTexturePartial(this, src, dst, srcX, srcY, dstX, dstY, width, height);
        return this;
    }

    inline public function generateMipmaps(texture: GsTexture): GsCommandList {
        Genesis.generateMipmaps(this, texture);
        return this;
    }

    inline public function destroy(): Void {
        Genesis.destroyCommandList(this);
    }

}

typedef GsCommandList = cpp.Star<NativeGsCommandList>;
