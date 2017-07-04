.class public Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;
.super Ljava/lang/Object;
.source "ComposeViewDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mIsNewAlbum:Z

.field public mItemCount:I

.field public mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field private mItemVersion:[J

.field public mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

.field public mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mSetVersion:[J

.field private mThmSizeType:B

.field private mUpdated:[B

.field private mVersion:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mVersion:J

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    iput-byte v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mThmSizeType:B

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mVersion:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mVersion:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)B
    .locals 1

    iget-byte v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mThmSizeType:B

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B
    .locals 0

    iput-byte p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mThmSizeType:B

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->setMediaItemCount(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mUpdated:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mSetVersion:[J

    return-object v0
.end method

.method private setMediaItemCount(IZ)V
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    if-gez p1, :cond_0

    const-string/jumbo v6, "ComposeViewDataLoader"

    const-string/jumbo v7, "count less than 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge v6, p1, :cond_4

    new-array v4, p1, [J

    new-array v2, p1, [J

    new-array v5, p1, [B

    new-array v3, p1, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-array v1, p1, [Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz p2, :cond_2

    invoke-static {v5, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    :goto_0
    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mSetVersion:[J

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemVersion:[J

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mUpdated:[B

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    :cond_1
    :goto_1
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    return-void

    :cond_2
    if-lez v0, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mSetVersion:[J

    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemVersion:[J

    invoke-static {v6, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mUpdated:[B

    invoke-static {v6, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v6, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-static {v6, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-static {v5, v0, p1, v9}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {v4, v0, p1, v10, v11}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mUpdated:[B

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mSetVersion:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mUpdated:[B

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mSetVersion:[J

    invoke-static {v6, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1
.end method
