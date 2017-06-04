.class public Lcom/sec/android/gallery3d/data/LocalSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_BURSTSHOT_EVENT_ALBUM:I = 0x15

.field private static final LOCAL_BURSTSHOT_LOCAL_ALBUM:I = 0x14

.field private static final LOCAL_CATEGORY_ALBUM:I = 0xf

.field private static final LOCAL_CATEGORY_ALBUMSET:I = 0xe

.field private static final LOCAL_EVENT_ALBUMSET:I = 0x9

.field private static final LOCAL_EVENT_ALL_ALBUM:I = 0xc

.field private static final LOCAL_EVENT_IMAGE_ALBUM:I = 0xa

.field private static final LOCAL_EVENT_IMAGE_ITEM:I = 0x17

.field private static final LOCAL_EVENT_VIDEO_ALBUM:I = 0xb

.field private static final LOCAL_EVENT_VIDEO_ITEM:I = 0x18

.field private static final LOCAL_HIDDEN_ALBUM:I = 0x1c

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_ITEM_ALBUM:I = 0x16

.field private static final LOCAL_SHOTMODE_360_ALBUM:I = 0x1b

.field private static final LOCAL_SHOTMODE_ALBUMSET:I = 0x10

.field private static final LOCAL_SHOTMODE_BURSTSHOT_ALBUMSET:I = 0x13

.field private static final LOCAL_SHOTMODE_FLIP_ALBUM:I = 0x1a

.field private static final LOCAL_SHOTMODE_IMAGE_ALBUM:I = 0x11

.field private static final LOCAL_SHOTMODE_IMAGE_SELFIE_ALBUM:I = 0x19

.field private static final LOCAL_SHOTMODE_VIDEO_ALBUM:I = 0x12

.field private static final LOCAL_SHOTMODE_WECHAT_ALBUM:I = 0x1e

.field private static final LOCAL_SHOTMODE_WECHAT_ALBUMSET:I = 0x1d

.field private static final LOCAL_SINGLE_ALBUMSET:I = 0x8

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_ALL:I = 0x0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field static final PATH_PREFIX:Ljava/lang/String; = "local"

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/sec/android/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string/jumbo v0, "local"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/single/*/*"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/all"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/all/*"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/image/*"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/video/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/categoryalbumset"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/categoryalbum/*"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmodealbumset"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmode/image/*"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmode/image/selfie"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmode/video/*"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmode/flip/*"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmode/360/*"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmodeburstshotalbumset"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/image/*/*"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/event/video/*/*"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/hiddenalbum/"

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmodewechatset"

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/shotmodewechatset/*"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/all/*"

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/burstshot/local/*/*"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/burstshot/event/*/*"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/local/item/all"

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;
    .locals 7

    const-string/jumbo v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sec/android/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v4, "/local/all"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v4, "/local/image"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "/local/video"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;ZJJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            "ZJJ)V"
        }
    .end annotation

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v15, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v10, 0x1

    :goto_1
    if-ge v12, v14, :cond_0

    add-int/lit16 v3, v10, 0x1f4

    if-ge v12, v3, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move/from16 v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemByIdAndDate(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;JJ)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    move v13, v10

    :goto_2
    if-ge v13, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v4, v13, v10

    aget-object v4, v11, v4

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move v10, v12

    goto :goto_0
.end method

.method private setShotModeWechatAlbumPath(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    const-string/jumbo v1, "/local/shotmodewechatset/-1"

    const-string/jumbo v0, "/local/shotmodewechatset"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 13

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; calculated match id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const-string/jumbo v3, "hidden"

    invoke-direct {v0, p1, v1, v3}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/data/EventAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZI)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/sec/android/gallery3d/data/EventAlbum;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    move-object v2, p1

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/data/EventAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZI)V

    move-object v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v8, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v10, v3, v5

    aput-object v12, v3, v4

    invoke-direct {v0, p1, v8, v1, v3}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1, v4}, Lcom/sec/android/gallery3d/data/LocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1, v5}, Lcom/sec/android/gallery3d/data/LocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v8, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v10, v3, v5

    aput-object v12, v3, v4

    invoke-direct {v0, p1, v8, v1, v3}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;

    invoke-direct {v0, p1, v2}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/gallery3d/data/CategoryAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1, v4}, Lcom/sec/android/gallery3d/data/ShotModeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1, v5}, Lcom/sec/android/gallery3d/data/ShotModeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;

    invoke-direct {v0, p1, v2}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalSource;->setShotModeWechatAlbumPath(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object p1

    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;

    invoke-direct {v0, p1, v2}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbumSet;

    invoke-direct {v0, p1, v2}, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/sec/android/gallery3d/data/BurstshotLocalAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/BurstshotLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IJ)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IJ)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lcom/sec/android/gallery3d/data/LocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/data/LocalItemAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;II)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/sec/android/gallery3d/data/LocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;II)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeSelfieAlbum;

    invoke-direct {v0, p1, v2}, Lcom/sec/android/gallery3d/data/ShotModeSelfieAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeFlipAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/gallery3d/data/ShotModeFlipAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/gallery3d/data/ShotMode360Album;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_15
        :pswitch_16
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_2
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v7

    if-ne v7, v0, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "media"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, v4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LocalSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid user id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LocalSource"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v7, "LocalSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_1
    :try_start_3
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v7, v2, v10

    if-ltz v7, :cond_2

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v7, v2, v10

    if-ltz v7, :cond_2

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x1

    invoke-direct {p0, v4, v7}, Lcom/sec/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    goto :goto_1

    :pswitch_4
    const/4 v7, 0x4

    invoke-direct {p0, v4, v7}, Lcom/sec/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    goto :goto_1

    :pswitch_5
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/sec/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/local/all"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v1, "/local/image"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string/jumbo v1, "/local/video"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    const-wide/16 v12, -0x1

    cmp-long v2, v4, v12

    if-eqz v2, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v8, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    cmp-long v2, v8, v4

    if-gez v2, :cond_3

    :cond_2
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    :cond_3
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_5

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;ZJJ)V

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;ZJJ)V

    return-void
.end method
