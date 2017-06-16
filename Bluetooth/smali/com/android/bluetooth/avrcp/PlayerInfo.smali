.class Lcom/android/bluetooth/avrcp/PlayerInfo;
.super Ljava/lang/Object;
.source "AvrcpControllerClasses.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerInfo"


# instance fields
.field mPlayStatus:B

.field mPlayTime:J

.field mPlayerAppSetting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;",
            ">;"
        }
    .end annotation
.end field

.field mPlayerId:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/PlayerInfo;->resetPlayer()V

    return-void
.end method

.method private resetPlayer()V
    .locals 3

    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    const-wide/16 v0, 0xff

    iput-wide v0, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    iput-char v2, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerId:C

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCurrentPlayerAppSettingValue(B)B
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    if-ne p1, v2, :cond_0

    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getSupportedPlayerAppSetting()Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    or-int/lit8 v3, v3, 0x2

    goto :goto_0

    :pswitch_2
    or-int/lit8 v3, v3, 0x8

    goto :goto_0

    :pswitch_3
    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    invoke-direct {v0, v3}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;-><init>(I)V

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    iget-byte v5, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->addSettingValue(II)V

    goto :goto_1

    :pswitch_5
    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    iget-byte v5, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->addSettingValue(II)V

    goto :goto_1

    :pswitch_6
    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    iget-byte v5, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v4}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->addSettingValue(II)V

    goto :goto_1

    :pswitch_7
    iget-byte v4, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    iget-byte v5, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAttribIdValtoAvrcpPlayerSetting(BB)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->addSettingValue(II)V

    goto :goto_1

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isPlayerAppSettingSupported(B[B)Z
    .locals 9

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    mul-int/lit8 v8, p1, 0x2

    if-ge v2, v8, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-byte v3, p2, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v7, p2, v1

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    iget-byte v8, v5, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    if-ne v8, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget-object v8, v5, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->supported_values:[B

    array-length v8, v8

    if-ge v4, v8, :cond_1

    iget-object v8, v5, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->supported_values:[B

    aget-byte v8, v8, v4

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    const/4 v8, 0x0

    return v8

    :cond_4
    const/4 v8, 0x1

    return v8
.end method

.method public setSupportedPlayerAppSetting(Ljava/nio/ByteBuffer;)V
    .locals 5

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    invoke-direct {v2}, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->supported_values:[B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v3, v2, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->supported_values:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePlayerAppSetting(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerAppSetting:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;

    iget-byte v3, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_Id:B

    if-ne v3, v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v1, Lcom/android/bluetooth/avrcp/PlayerApplicationSettings;->attr_val:B

    goto :goto_0

    :cond_2
    return-void
.end method
