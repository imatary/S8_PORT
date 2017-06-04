.class Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;
.super Lcom/sec/android/gallery3d/data/UnionAlbumSet;
.source "UnionRecycleBinAlbumSet.java"


# static fields
.field public static final PATH_RECYCLE_BIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_RECYCLE_BIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/union/recyclebin/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->PATH_RECYCLE_BIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/union/recyclebin/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->PATH_RECYCLE_BIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method


# virtual methods
.method protected getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "null"

    aget-object v2, v1, v4

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "all"

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    aget-object v2, v1, v4

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "image"

    goto :goto_0

    :cond_1
    aget-object v2, v1, v4

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "video"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 13

    invoke-virtual/range {p3 .. p4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    if-eqz v10, :cond_0

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v10

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v10, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v2, 0x1

    move/from16 v0, p4

    invoke-direct {v10, v11, v1, v0, v2}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_2
    new-instance v10, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v1, v0, v2}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->PATH_RECYCLE_BIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    const/4 v3, 0x4

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->PATH_RECYCLE_BIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    sget-object v8, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v10, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-direct {v10, v11, v8, v1, v2}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected makeWhereClause()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "file_status = 2"

    return-object v0
.end method
