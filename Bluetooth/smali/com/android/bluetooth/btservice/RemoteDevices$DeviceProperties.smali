.class Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceProperties"
.end annotation


# instance fields
.field private mAclConnected:Z

.field private mAddress:[B

.field private mAddressType:I

.field private mAlias:Ljava/lang/String;

.field private mAppearance:S

.field private mBluetoothClass:I

.field private mBondState:I

.field private mConnectionInterval:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceType:I

.field private mGearIsConnected:Z

.field private mLeDeviceType:I

.field private mLlFeature:I

.field private mManufacturerData:[B

.field private mName:Ljava/lang/String;

.field private mPairResAuth:I

.field private mPairResOob:I

.field private mRfcommConnected:Z

.field private mRssi:S

.field private mSmpFailReaon:I

.field private mUuids:[Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddressType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mPairResOob:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mSmpFailReaon:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAppearance:S

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mConnectionInterval:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mLlFeature:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mPairResAuth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddressType:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mPairResAuth:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mPairResOob:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0

    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p1
.end method

.method static synthetic -set14(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mSmpFailReaon:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0

    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAppearance:S

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mConnectionInterval:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mLlFeature:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    return-object p1
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    return-void
.end method


# virtual methods
.method getAddress()[B
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getAlias()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getAppearance()S
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-short v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAppearance:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBluetoothClass()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBondState()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getDeviceType()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getGearIsConnected()Z
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGearIsConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getLeDeviceType()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mLeDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getManufacturerData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getRssi()S
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-short v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isSecWearableDevice()Z
    .locals 13

    const/4 v12, 0x5

    const/16 v11, 0x8

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    if-eqz v6, :cond_3

    new-array v0, v8, [I

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v6, v6, v12

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    const/4 v7, 0x7

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aput v6, v0, v10

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    aput v6, v0, v9

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSecWearableDevice :: get device id = 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v10

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap0(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    aget v6, v0, v10

    if-nez v6, :cond_3

    aget v6, v0, v9

    const/16 v7, 0xff

    if-gt v6, v7, :cond_3

    aget v6, v0, v9

    if-lt v6, v9, :cond_3

    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v6, v6, v12

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    const/4 v7, 0x7

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v6, v6, v11

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    const/16 v3, 0xa

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v1, v6, v11

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_2

    shl-int v6, v9, v2

    int-to-byte v4, v6

    and-int v6, v1, v4

    int-to-byte v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :pswitch_3
    add-int/lit8 v3, v3, 0x6

    goto :goto_2

    :pswitch_4
    add-int/lit8 v3, v3, 0x12

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    aput v6, v0, v10

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aput v6, v0, v9

    goto/16 :goto_0

    :cond_3
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setAclConnected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAclConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAclConnected:Z

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAclConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRfcommConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAclConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRfcommConnected:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setGearIsConnected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setGearIsConnected(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method setBluetoothClass(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iput p2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.CLASS"

    new-instance v4, Landroid/bluetooth/BluetoothClass;

    iget v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    invoke-direct {v4, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    const-string/jumbo v4, "COD is 0, DO NOT Set class"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method setBondState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setGearIsConnected(Z)V
    .locals 10

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isSecWearableDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setGearIsConnected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get0()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    invoke-static {v8}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    const/4 v4, 0x2

    :goto_0
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    const-string/jumbo v8, "send state changed"

    invoke-static {v6, v8}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap0(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v6

    const/16 v8, 0xc8

    invoke-virtual {v6, v0, v8, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v6

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v3, v8}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v6, 0xf0

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v6

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    const/4 v5, 0x2

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v7

    return-void
.end method

.method setManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mManufacturerData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    const/16 v3, 0xf1

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.device.action.MANUFACTURER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    const-string/jumbo v2, "failed to set manufacturer data"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    const-string/jumbo v2, "manufacturerData is null, will not set manufacturer data"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setRfcommConnected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRfcommConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->-wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRfcommConnected:Z

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAclConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRfcommConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRfcommConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mGearIsConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setGearIsConnected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setGearIsConnected(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
