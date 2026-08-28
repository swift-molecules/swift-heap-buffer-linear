public import Buffer
public import Buffer_Linear_Primitive
public import Heap
public import Memory_Allocator_Primitive
public import Memory_Small
public import Storage
public import Storage_Memory

public typealias Heap<E: ~Copyable> =
    __Heap<Buffer<Storage<Memory.Allocator<Memory.Small<0>>>.Contiguous<E>>.Linear>
