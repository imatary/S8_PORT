.class Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;
.super Ljava/lang/Object;
.source "LogicalAlbumResIds.java"


# static fields
.field private static final BURSTSHOT_BUCKET_ID:I

.field private static final FAVORITE_BUCKET_ID:I

.field private static final LOGICAL_ALBUM_RES_ID_LIST:Landroid/util/SparseIntArray;

.field private static final VIDEO_BUCKET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Favourites"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->FAVORITE_BUCKET_ID:I

    const-string/jumbo v0, "BurstShot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->BURSTSHOT_BUCKET_ID:I

    const-string/jumbo v0, "Videos"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->VIDEO_BUCKET_ID:I

    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->LOGICAL_ALBUM_RES_ID_LIST:Landroid/util/SparseIntArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->VIDEO_BUCKET_ID:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->BURSTSHOT_BUCKET_ID:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->FAVORITE_BUCKET_ID:I

    return v0
.end method

.method static get(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->LOGICAL_ALBUM_RES_ID_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method
