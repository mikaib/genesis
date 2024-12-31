package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBuffer')
@:unreflective
@:structAccess
private extern class NativeGsBuffer {
    public var type: GsBufferType;
    public var intent: GsBufferIntent;

    inline public function setData(data: GsManagedBufferData): Void {
        Genesis.bufferSetData(this, data);
    }

    inline public function setPartialData(data: GsManagedBufferData, offset: Int): Void {
        Genesis.bufferSetPartialData(this, data, offset);
    }

    inline public function destroy(): Void {
        Genesis.destroyBuffer(this);
    }
}

typedef GsBuffer = cpp.Star<NativeGsBuffer>;
