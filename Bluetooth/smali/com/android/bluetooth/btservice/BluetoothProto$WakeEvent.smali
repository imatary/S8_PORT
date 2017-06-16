.class public final Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeEvent"
.end annotation


# static fields
.field public static final ACQUIRED:I = 0x1

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final RELEASED:I = 0x2

.field public static final REQUESTOR_FIELD_NUMBER:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final WAKE_EVENT_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private eventTimeMillis_:J

.field private hasEventTimeMillis:Z

.field private hasName:Z

.field private hasRequestor:Z

.field private hasWakeEventType:Z

.field private name_:Ljava/lang/String;

.field private requestor_:Ljava/lang/String;

.field private wakeEventType_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->wakeEventType_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->requestor_:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->name_:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->eventTimeMillis_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->clearWakeEventType()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->clearRequestor()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->clearName()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->cachedSize:I

    return-object p0
.end method

.method public clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasEventTimeMillis:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public clearName()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasName:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public clearRequestor()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasRequestor:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->requestor_:Ljava/lang/String;

    return-object p0
.end method

.method public clearWakeEventType()Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasWakeEventType:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->wakeEventType_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->cachedSize:I

    return v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->requestor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasWakeEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getWakeEventType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasRequestor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getRequestor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasEventTimeMillis()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getEventTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->cachedSize:I

    return v0
.end method

.method public getWakeEventType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->wakeEventType_:I

    return v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasEventTimeMillis:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasName:Z

    return v0
.end method

.method public hasRequestor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasRequestor:Z

    return v0
.end method

.method public hasWakeEventType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasWakeEventType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 4
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->setWakeEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->setRequestor(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->setName(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasEventTimeMillis:Z

    iput-wide p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasName:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestor(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasRequestor:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->requestor_:Ljava/lang/String;

    return-object p0
.end method

.method public setWakeEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasWakeEventType:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->wakeEventType_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasWakeEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getWakeEventType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasRequestor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getRequestor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->hasEventTimeMillis()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;->getEventTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    :cond_3
    return-void
.end method
