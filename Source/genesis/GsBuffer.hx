package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBuffer')
@:unreflective
@:structAccess
private extern class NativeGsBuffer {
    public var type: GsBufferType;
    public var intent: GsBufferIntent;
    public var size: Int; // can only represent ~2.14gb, should be enough for now

    inline public function setData(data: GsManagedData): Void {
        Genesis.bufferSetData(this, data);
    }

    inline public function setPartialData(data: GsManagedData, offset: Int): Void {
        Genesis.bufferSetPartialData(this, data, offset);
    }

    inline public function destroy(): Void {
        Genesis.destroyBuffer(this);
    }
}

typedef GsBuffer = cpp.Star<NativeGsBuffer>;
