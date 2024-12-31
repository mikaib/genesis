package genesis;

enum abstract GsClearFlags(Int) from Int to Int {
    public var GS_CLEAR_COLOR: Int = 1;
    public var GS_CLEAR_DEPTH: Int = 2;
    public var GS_CLEAR_STENCIL: Int = 4;
}
