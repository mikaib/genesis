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

    inline public function build(): Void {
        Genesis.programBuild(this);
    }

    inline public function destroy(): Void {
        Genesis.destroyProgram(this);
    }

    inline public function getUniformLocation(name: String): GsUniformLocation {
        return Genesis.getUniformLocation(this, name);
    }

}

typedef GsProgram = cpp.Star<NativeGsProgram>;
