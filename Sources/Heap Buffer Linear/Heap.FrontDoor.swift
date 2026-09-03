public import Buffer
public import Buffer_Linear
public import Heap
public import Memory_Allocator
public import Memory_Small
public import Storage
public import Storage_Memory

public typealias Heap<E: ~Copyable> =
    __Heap<Buffer<Storage::Storage<Memory.Allocator<Memory.Small<0>>>.Contiguous<E>>.Linear>
