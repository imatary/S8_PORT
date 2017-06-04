.class public Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;
.super Ljava/lang/Object;
.source "SlideShowMediaSetUtils.java"


# static fields
.field private static final ALBUM_MATCHER_START:I


# instance fields
.field private mAlbumMatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPathToProjection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathToUri:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initHashMapForAlbumMatcher()V
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initHashMapForProjection()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initHashMapForUri()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public albumMatcher(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mAlbumMatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContentProviderURI(Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToUri:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getProjection(Lcom/sec/android/gallery3d/data/Path;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->mPathToProjection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->initHashMapForUri()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->initHashMapForProjection()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->initHashMapForAlbumMatcher()V

    return-void
.end method
