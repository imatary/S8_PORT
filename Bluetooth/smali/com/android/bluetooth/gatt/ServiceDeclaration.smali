.class Lcom/android/bluetooth/gatt/ServiceDeclaration;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BtGatt.ServiceDeclaration"

.field public static final TYPE_CHARACTERISTIC:B = 0x2t

.field public static final TYPE_DESCRIPTOR:B = 0x3t

.field public static final TYPE_INCLUDED_SERVICE:B = 0x4t

.field public static final TYPE_SERVICE:B = 0x1t

.field public static final TYPE_UNDEFINED:B


# instance fields
.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNumHandles:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    return-void
.end method


# virtual methods
.method addCharacteristic(Ljava/util/UUID;II)V
    .locals 8

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method addDescriptor(Ljava/util/UUID;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addIncludedService(Ljava/util/UUID;II)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;II)V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method addService(Ljava/util/UUID;IIIZ)V
    .locals 8

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;IIZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_0

    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getNumHandles()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isServiceAdvertisePreferred(Ljava/util/UUID;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
