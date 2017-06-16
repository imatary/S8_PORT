.class public Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;
.super Ljava/lang/Object;
.source "RemoteMediaPlayers.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "RemoteMediaPlayers"


# instance fields
.field private mAddressedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

.field private mBrowsedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

.field mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

.field mMediaPlayerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/PlayerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/RemoteDevice;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mAddressedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mBrowsedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mMediaPlayerList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPlayer(Lcom/android/bluetooth/avrcp/PlayerInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mMediaPlayerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mMediaPlayerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mAddressedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mBrowsedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mMediaPlayerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mMediaPlayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mAddressedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    return-object v0
.end method

.method public getPlayPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xff

    return-wide v0
.end method

.method public getPlayStatus()B
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAddressedPlayer(Lcom/android/bluetooth/avrcp/PlayerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mAddressedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    return-void
.end method

.method public setBrowsedPlayer(Lcom/android/bluetooth/avrcp/PlayerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->mBrowsedPlayer:Lcom/android/bluetooth/avrcp/PlayerInfo;

    return-void
.end method
