.class public Lcom/android/bluetooth/avrcp/NowPlaying;
.super Ljava/lang/Object;
.source "NowPlaying.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NowPlaying"


# instance fields
.field private mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

.field mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

.field private mNowPlayingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/RemoteDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    return-void
.end method


# virtual methods
.method public addTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    return-void
.end method

.method public getCurrentTrack()Lcom/android/bluetooth/avrcp/TrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    return-object v0
.end method

.method public getDeviceRecords()Lcom/android/bluetooth/avrcp/RemoteDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    return-object v0
.end method

.method public getTrackFromId(I)Lcom/android/bluetooth/avrcp/TrackInfo;
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/NowPlaying;->getCurrentTrack()Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mNowPlayingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-wide v2, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mItemUid:D

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    return-object v0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public setCurrTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    return-void
.end method

.method public updateCurrentTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-object v1, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mAlbumTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mAlbumTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-object v1, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mArtistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mArtistName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-object v1, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mGenre:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mGenre:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-wide v2, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mTotalTracks:J

    iput-wide v2, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTotalTracks:J

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-wide v2, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    iput-wide v2, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-object v1, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/NowPlaying;->mCurrTrack:Lcom/android/bluetooth/avrcp/TrackInfo;

    iget-wide v2, p1, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackNum:J

    iput-wide v2, v0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackNum:J

    return-void
.end method
