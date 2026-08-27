public import Buffer
public import Buffer_Linear_Primitive
public import Heap
public import Memory_Allocator_Primitive
public import Memory_Heap
public import Storage

public typealias Heap<E: ~Copyable> =
    __Heap<Buffer<Storage<Memory.Allocator<Memory.Heap>>.Contiguous<E>>.Linear>
