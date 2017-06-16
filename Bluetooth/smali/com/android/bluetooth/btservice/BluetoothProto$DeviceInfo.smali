.class public final Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final DEVICE_CLASS_FIELD_NUMBER:I = 0x1

.field public static final DEVICE_TYPE_BREDR:I = 0x1

.field public static final DEVICE_TYPE_DUMO:I = 0x3

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I


# instance fields
.field private cachedSize:I

.field private deviceClass_:I

.field private deviceType_:I

.field private hasDeviceClass:Z

.field private hasDeviceType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceClass_:I

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceType_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->clearDeviceClass()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->clearDeviceType()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->cachedSize:I

    return-object p0
.end method

.method public clearDeviceClass()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceClass:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceClass_:I

    return-object p0
.end method

.method public clearDeviceType()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceType:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceType_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->cachedSize:I

    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceClass_:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->getDeviceClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->getDeviceType()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->cachedSize:I

    return v0
.end method

.method public hasDeviceClass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceClass:Z

    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->setDeviceClass(I)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->setDeviceType(I)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceClass(I)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceClass:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceClass_:I

    return-object p0
.end method

.method public setDeviceType(I)Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceType:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->deviceType_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->getDeviceClass()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->hasDeviceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    return-void
.end method
