.class Lcom/android/bluetooth/gatt/ScanFilterQueue;
.super Ljava/lang/Object;
.source "ScanFilterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_ALL:B = 0x2t

.field private static final MAX_LEN_PER_FIELD:I = 0x1a

.field public static final TYPE_DEVICE_ADDRESS:I = 0x0

.field public static final TYPE_LOCAL_NAME:I = 0x4

.field public static final TYPE_MANUFACTURER_DATA:I = 0x5

.field public static final TYPE_SERVICE_DATA:I = 0x6

.field public static final TYPE_SERVICE_DATA_CHANGED:I = 0x1

.field public static final TYPE_SERVICE_UUID:I = 0x2

.field public static final TYPE_SOLICIT_UUID:I = 0x3


# instance fields
.field private mEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    return-void
.end method

.method private concate(Landroid/os/ParcelUuid;[B)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    add-int/lit8 v1, v3, 0x2

    const/16 v3, 0x1a

    if-le v1, v3, :cond_1

    return-object v5

    :cond_0
    array-length v3, p2

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    if-eqz p2, :cond_2

    array-length v3, p2

    invoke-static {p2, v4, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method addDeviceAddress(Ljava/lang/String;B)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    iput-byte p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addManufacturerData(II[B[B)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    iput p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    iput-object p3, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    iput-object p4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addManufacturerData(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    const v1, 0xffff

    iput v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addScanFilter(Landroid/bluetooth/le/ScanFilter;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addDeviceAddress(Ljava/lang/String;B)V

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(I[B)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object v1

    if-nez v1, :cond_5

    array-length v3, v0

    new-array v1, v3, [B

    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_5
    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object v0

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addServiceData([B[B)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v5

    const v6, 0xffff

    invoke-virtual {p0, v3, v6, v4, v5}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(II[B[B)V

    goto :goto_1
.end method

.method addServiceChanged()V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addServiceData([B[B)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addSolicitUuid(Ljava/util/UUID;)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addUuid(Ljava/util/UUID;)V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addUuid(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method clearUuids()V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    iget-byte v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getFeatureSelection()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    iget-byte v3, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    return-object v0
.end method
