package genesis;

import haxe.io.Bytes;

private class GsManagedBufferDataHolder {
    private var ptr: cpp.Star<cpp.Void>;
    private var size: Int;
    private function new() {}

    public static inline function create(ptr: cpp.Star<cpp.Void>, size: Int): GsManagedBufferDataHolder {
        var holder = new GsManagedBufferDataHolder();
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
abstract GsManagedBufferData(GsManagedBufferDataHolder) {
    public function new(star: cpp.Star<cpp.Void>, size: Int) {
        this = GsManagedBufferDataHolder.create(star, size);
    }

    @:from
    public static inline function fromIntArray(data: Array<Int>): GsManagedBufferData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data, 0).reinterpret();
        return new GsManagedBufferData(ptr.ptr, data.length * 4);
    }

    @:from
    public static inline function fromFloatArray(data: Array<cpp.Float32>): GsManagedBufferData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data, 0).reinterpret();
        return new GsManagedBufferData(ptr.ptr, data.length * 4);
    }

    @:from
    public static inline function fromBytes(data: Bytes): GsManagedBufferData {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data.getData(), 0).reinterpret();
        return new GsManagedBufferData(ptr.ptr, data.length);
    }
}
