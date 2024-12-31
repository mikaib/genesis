package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsProgram')
@:unreflective
@:structAccess
private extern class NativeGsProgram {
    public var vertex: GsShader;
    public var fragment: GsShader;

    inline public function attachShader(shader: GsShader): Void {
        Genesis.programAttachShader(this, shader);
    }

    inline public function complete(): Void {
        Genesis.programComplete(this);
    }

    inline public function destroy(): Void {
        Genesis.destroyProgram(this);
    }
}

typedef GsProgram = cpp.Star<NativeGsProgram>;
