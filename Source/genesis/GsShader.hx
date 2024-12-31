package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsShader')
@:unreflective
@:structAccess
private extern class NativeGsShader {
    public var type: GsShaderType;

    inline public function destroy(): Void {
        Genesis.destroyShader(this);
    }
}

typedef GsShader = cpp.Star<NativeGsShader>;
