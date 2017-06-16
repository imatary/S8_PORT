.class Lcom/android/bluetooth/avrcp/TrackInfo;
.super Lcom/android/bluetooth/avrcp/MediaItem;
.source "AvrcpControllerClasses.java"


# instance fields
.field mAlbumTitle:Ljava/lang/String;

.field mArtistName:Ljava/lang/String;

.field mGenre:Ljava/lang/String;

.field mTotalTracks:J

.field mTrackLen:J

.field mTrackNum:J

.field mTrackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaItem;-><init>()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/TrackInfo;->resetTrackInfo()V

    return-void
.end method

.method public constructor <init>(IB[I[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaItem;-><init>()V

    int-to-double v2, p1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mItemUid:D

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/TrackInfo;->resetTrackInfo()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p3, v0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    aget-object v1, p4, v0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackTitle:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    aget-object v1, p4, v0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mArtistName:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    aget-object v1, p4, v0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mAlbumTitle:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p4, v0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackNum:J

    goto :goto_1

    :pswitch_4
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p4, v0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTotalTracks:J

    goto :goto_1

    :pswitch_5
    aget-object v1, p4, v0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mGenre:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p4, v0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    goto :goto_1

    :cond_1
    return-void

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
.end method

.method private resetTrackInfo()V
    .locals 4

    const-wide/16 v2, 0xff

    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mArtistName:Ljava/lang/String;

    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackTitle:Ljava/lang/String;

    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mAlbumTitle:Ljava/lang/String;

    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mGenre:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackNum:J

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTotalTracks:J

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata [artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " albumTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " genre= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackNum= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " track_len : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " TotalTracks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/TrackInfo;->mTotalTracks:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
