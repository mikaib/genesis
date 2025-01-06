package genesis;
import haxe.io.Bytes;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsTexture')
@:unreflective
@:structAccess
private extern class NativeGsTexture {
    public var width: Int;
    public var height: Int;
    public var format: GsTextureFormat;
    public var wrap_s: GsTextureWrap;
    public var wrap_t: GsTextureWrap;
    public var wrap_r: GsTextureWrap;
    public var min: GsTextureFilter;
    public var mag: GsTextureFilter;
    public var type: GsTextureType;

    inline public function destroy(): Void {
        Genesis.destroyTexture(this);
    }

    inline public function setData(data: Bytes): Void {
        Genesis.textureSetData(this, data);
    }

    inline public function setFaceData(face: GsCubemapFace, data: Bytes): Void {
        Genesis.textureSetFaceData(this, face, data);
    }

}

typedef GsTexture = cpp.Star<NativeGsTexture>;
