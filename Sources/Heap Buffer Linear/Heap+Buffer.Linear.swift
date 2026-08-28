public import Buffer
public import Buffer_Linear_Primitive
public import Cardinal
public import Heap
public import Memory_Allocator_Primitive
public import Memory_Allocator_Protocol
public import Storage
public import Tagged

extension __Heap where S: ~Copyable {

    @inlinable
    public init<E: ~Copyable, Resource: Memory.Growable & ~Copyable>(
        minimumCapacity: Tagged<E, Cardinal> = .init(4)
    ) where S == Buffer<Storage<Memory.Allocator<Resource>>.Contiguous<E>>.Linear {
        self.init(column: S(minimumCapacity: minimumCapacity))
    }
}
