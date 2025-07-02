package genesis;

import haxe.io.Bytes;
import haxe.ds.Vector;

private class GsManagedDataHolder {
    private var ptr: cpp.Star<cpp.Void>;
    private var size: Int;
    private function new() {}

    public static inline function create(ptr: cpp.Star<cpp.Void>, size: Int): GsManagedDataHolder {
        var holder = new GsManagedDataHolder();
        holder.ptr = ptr;
        holder.size = size;

        return holder;
    }

    inline public function getPtr(): cpp.Star<cpp.Void> {
        return ptr;
    }

    inline public function getSize(): Int {
        return size;
    }
}

@:forward
abstract GsManagedData(GsManagedDataHolder) {
    public function new(star: cpp.Star<cpp.Void>, size: Int) {
        this = GsManagedDataHolder.create(star, size);
    }

    @:from
    public static inline function fromIntArray(data: Array<Int>): GsManagedData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data, 0).reinterpret();
        return new GsManagedData(ptr.ptr, data.length * 4);
    }

    @:from
    public static inline function fromFloatArray(data: Array<cpp.Float32>): GsManagedData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data, 0).reinterpret();
        return new GsManagedData(ptr.ptr, data.length * 4);
    }

    @:from
    public static inline function fromIntVector(data: Vector<Int>): GsManagedData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(cast data.toData(), 0).reinterpret();
        return new GsManagedData(ptr.ptr, data.length * 4);
    }

    @:from
    public static inline function fromFloatVector(data: Vector<cpp.Float32>): GsManagedData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(cast data.toData(), 0).reinterpret();
        return new GsManagedData(ptr.ptr, data.length * 4);
    }

//    @:from
//    public static inline function fromBytes(data: Bytes): GsManagedData {
//        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data.getData(), 0).reinterpret();
//        return new GsManagedData(ptr.ptr, data.length);
//    }
}
