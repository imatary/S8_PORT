.class public Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceEventController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;
    }
.end annotation


# instance fields
.field private mDeviceInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    return-void
.end method

.method private getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I
    .locals 3

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "##Error event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getFeature()I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayStatusChangedNT()I

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getTrackChangedNT()I

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayPosChangedNT()I

    move-result v0

    return v0

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayerSettingChangedNT()I

    move-result v0

    return v0

    :pswitch_5
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getNowPlayingContentChangedNT()I

    move-result v0

    return v0

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getAvailablePlayersChangedNT()I

    move-result v0

    return v0

    :pswitch_7
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getAddressedPlayerChangedNT()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private notificationRsp([BIILandroid/os/Bundle;)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, "##Error event"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const-string/jumbo v7, "PLAYBACK_STATUS_CHANGED"

    const/4 v8, 0x0

    invoke-virtual {p4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, p1, p3, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap10(Lcom/android/bluetooth/avrcp/Avrcp;[BII)Z

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get32(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get32(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, "Track is not selected"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v6, 0x8

    new-array v1, v6, [B

    const/4 v6, -0x1

    const/4 v7, 0x0

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x1

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x4

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x5

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x6

    aput-byte v6, v1, v7

    const/4 v6, -0x1

    const/4 v7, 0x7

    aput-byte v6, v1, v7

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;[BI[B)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap5(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap4(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const-string/jumbo v7, "TRACK_CHANGED"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, p1, p3, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;[BI[B)Z

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x8

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;[BI[B)Z

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v6, "PLAYBACK_POS_CHANGED"

    const-wide/16 v8, 0x0

    invoke-virtual {p4, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get46(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    const-wide/16 v2, 0x0

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap9(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)Z

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get46(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get46(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v2

    goto :goto_1

    :pswitch_3
    const-string/jumbo v6, "repeat"

    const/4 v7, 0x0

    invoke-virtual {p4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v6, "shuffle"

    const/4 v7, 0x0

    invoke-virtual {p4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap11(Lcom/android/bluetooth/avrcp/Avrcp;[BIII)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap8(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap7(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const-string/jumbo v7, "ADDRESSED_PLAYER_CHANGED"

    const/4 v8, 0x0

    invoke-virtual {p4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, p1, p3, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap6(Lcom/android/bluetooth/avrcp/Avrcp;[BII)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private setDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;II)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "##Error event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setFeature(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setPlayStatusChangedNT(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setTrackChangedNT(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setPlayPosChangedNT(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setPlayerSettingChangedNT(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setNowPlayingContentChangedNT(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setAvailablePlayersChangedNT(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->setAddressedPlayerChangedNT(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addNewDevice(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v3, "addNewDevice : add device"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;-><init>(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;)V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "compareEventFlag event : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " addr : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_6

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-get16(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v6, p2, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->dumpDeviceInfo(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;ILjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I

    move-result v9

    if-ne p3, v9, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    :try_start_1
    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I

    move-result v9

    and-int/2addr v9, p3

    if-eqz v9, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-lez v9, :cond_5

    monitor-exit v8

    return-object v5

    :cond_5
    :try_start_2
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "compareEventFlag : no matched device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v7

    :cond_6
    :try_start_3
    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "compareEventFlag : there is not the key"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    return-object v7

    :cond_7
    :try_start_4
    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, v6, p2, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->dumpDeviceInfo(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;ILjava/lang/String;)V

    :cond_8
    const/4 v4, 0x0

    if-eqz p2, :cond_a

    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I

    move-result v9

    if-ne p3, v9, :cond_9

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_e

    if-eqz p1, :cond_c

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_d

    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "compareEventFlag : addDevice is not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v8

    return-object v7

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    :try_start_5
    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I

    move-result v9

    and-int/2addr v9, p3

    if-eqz v9, :cond_b

    const/4 v4, 0x1

    goto :goto_1

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    :cond_c
    move-object v0, v7

    goto :goto_2

    :cond_d
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v8

    return-object v5

    :cond_e
    :try_start_6
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "compareEventFlag : flag is not matched"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v8

    return-object v7
.end method

.method public dumpDeviceInfo(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;ILjava/lang/String;)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "##Error event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFeature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getFeature()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayStatusChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayStatusChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTrackChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getTrackChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayPosChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayPosChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayerSettingChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getPlayerSettingChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNowPlayingContentChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getNowPlayingContentChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailablePlayersChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getAvailablePlayersChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAddressedPlayerChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->getAddressedPlayerChangedNT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDeviceEvent(Ljava/lang/String;I)I
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v4, "getDeviceEvent : there is not the key"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceEvent event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " addr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return v1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isContainKey(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendNotificationRsp event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->notificationRsp([BIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDeviceEvent(Ljava/util/ArrayList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;II)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDeviceEvent event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;-><init>(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;)V

    invoke-direct {p0, v3, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;II)V

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceInformation(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;II)V

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v5

    return-void
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->mDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
