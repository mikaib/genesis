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

    inline public function destroy(): Void {
        Genesis.destroyCommandList(this);
    }

}

typedef GsCommandList = cpp.Star<NativeGsCommandList>;