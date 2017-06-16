.class public Lcom/android/bluetooth/avrcp/AvrcpHelper;
.super Ljava/lang/Object;
.source "AvrcpHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvrcpHelper"


# instance fields
.field private mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    return-void
.end method


# virtual methods
.method public createMediaElement(Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v9, p1

    check-cast v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    if-eqz p2, :cond_0

    new-array v7, p2, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p2, :cond_0

    aget v1, p3, v8

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_1
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_2
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_3
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_4
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_5
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :pswitch_6
    iget-object v1, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    aput-object v1, v7, v8

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    new-instance v4, Ljava/lang/String;

    iget-object v5, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    int-to-byte v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    iget-wide v2, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaUid:J

    iput-wide v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaUid:J

    iget-wide v2, v9, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    iput-wide v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    return-object v0

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
.end method

.method public getCurrentScope()B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    return v0
.end method

.method public getFolderObject(Ljava/lang/Long;BLjava/lang/String;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V

    return-object v0
.end method

.method public getIndexFromPlayingList(IJ)J
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v4, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v4, "AvrcpHelper"

    const-string/jumbo v5, "mNowPlayingList  list is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v4, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget-wide v4, v1, v0

    cmp-long v4, v4, p2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "AvrcpHelper"

    const-string/jumbo v5, "UID not found in list"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6
.end method

.method public getMediaElementObject(JLjava/lang/String;B[I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public getSearchMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpHelper;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public setMediaElementIdUid(Ljava/lang/Object;JJ)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    iput-wide p2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    iput-wide p4, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaUid:J

    return-void
.end method
