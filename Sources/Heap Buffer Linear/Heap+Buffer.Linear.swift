public import Buffer
public import Buffer_Linear_Primitive
public import Comparison
public import Heap
public import Index
public import Memory_Allocator_Primitive
public import Memory_Allocator_Protocol
public import Storage

extension __Heap where S: ~Copyable {

    @inlinable
    public init<E: ~Copyable, Resource: Memory.Growable & ~Copyable>(
        minimumCapacity: Index<E>.Count = Index<E>.Count(4)
    ) where S == Buffer<Storage<Memory.Allocator<Resource>>.Contiguous<E>>.Linear {
        self.init(column: S(minimumCapacity: minimumCapacity))
    }

    @inlinable
    public mutating func push<
        E: ~Copyable & Comparison.`Protocol`,
        Resource: Memory.Growable & ~Copyable
    >(
        _ element: consuming E
    ) where S == Buffer<Storage<Memory.Allocator<Resource>>.Contiguous<E>>.Linear {
        column.append(element)

        siftUp(from: Int(clamping: count) - 1)
    }
}
