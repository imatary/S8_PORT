.class public final Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothLog"
.end annotation


# static fields
.field public static final PAIR_EVENT_FIELD_NUMBER:I = 0x2

.field public static final SCAN_EVENT_FIELD_NUMBER:I = 0x4

.field public static final SESSION_FIELD_NUMBER:I = 0x1

.field public static final WAKE_EVENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private pairEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;",
            ">;"
        }
    .end annotation
.end field

.field private scanEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private session_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;",
            ">;"
        }
    .end annotation
.end field

.field private wakeEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    return-object v0
.end method


# virtual methods
.method public addPairEvent(Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSession(Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addWakeEvent(Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->clearSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->clearPairEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->clearWakeEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->clearScanEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->cachedSize:I

    return-object p0
.end method

.method public clearPairEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    return-object p0
.end method

.method public clearScanEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    return-object p0
.end method

.method public clearSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    return-object p0
.end method

.method public clearWakeEvent()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->cachedSize:I

    return v0
.end method

.method public getPairEvent(I)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    return-object v0
.end method

.method public getPairEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPairEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getScanEvent(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    return-object v0
.end method

.method public getScanEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getScanEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getSessionList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    const/4 v6, 0x1

    invoke-static {v6, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getPairEventList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    const/4 v6, 0x2

    invoke-static {v6, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getWakeEventList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    const/4 v6, 0x3

    invoke-static {v6, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getScanEventList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    const/4 v6, 0x4

    invoke-static {v6, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    :cond_3
    iput v5, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->cachedSize:I

    return v5
.end method

.method public getSession(I)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    return-object v0
.end method

.method public getWakeEvent(I)Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    return-object v0
.end method

.method public getWakeEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWakeEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 6
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v5

    if-nez v5, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v1, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->addSession(Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    goto :goto_0

    :sswitch_2
    new-instance v2, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    invoke-direct {v2}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->addPairEvent(Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    goto :goto_0

    :sswitch_3
    new-instance v4, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    invoke-direct {v4}, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;-><init>()V

    invoke-virtual {p1, v4}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->addWakeEvent(Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    goto :goto_0

    :sswitch_4
    new-instance v3, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-direct {v3}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    move-result-object v0

    return-object v0
.end method

.method public setPairEvent(ILcom/android/bluetooth/btservice/BluetoothProto$PairEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->pairEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setScanEvent(ILcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->scanEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSession(ILcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->session_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setWakeEvent(ILcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->wakeEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getSessionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getPairEventList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getWakeEventList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/btservice/BluetoothProto$WakeEvent;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->getScanEventList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    :cond_3
    return-void
.end method
