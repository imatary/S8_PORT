.class public Lcom/sec/android/gallery3d/util/BucketNames;
.super Ljava/lang/Object;
.source "BucketNames.java"


# static fields
.field public static final ANIMATEDGIF:Ljava/lang/String; = "AnimatedGif"

.field public static final ANIMATED_GIF:Ljava/lang/String; = "DCIM/Animated GIF"

.field public static final BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUCKET_NAME_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUCKET_ORIGINAL_NAME_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BURSTSHOT:Ljava/lang/String; = "BurstShot"

.field public static final CAMERA:Ljava/lang/String; = "DCIM/Camera"

.field public static final CAMERA360:Ljava/lang/String; = "Camera360"

.field public static final CLIPSTUDIO:Ljava/lang/String; = "ClipStudio"

.field public static final COVER_CAMERA:Ljava/lang/String; = "DCIM/CoverCamera"

.field public static final DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final FASTMOTION:Ljava/lang/String; = "FastMotion"

.field public static final FAVOURITES:Ljava/lang/String; = "Favourites"

.field public static final FLIPPHOTO:Ljava/lang/String; = "FlipPhoto"

.field public static final HIGHLIGHT:Ljava/lang/String; = "DCIM/Highlight Video"

.field public static final HYPERLAPSE:Ljava/lang/String; = "Hyperlapse"

.field public static final IMPORTED:Ljava/lang/String; = "Imported"

.field public static final MAGICSHOT:Ljava/lang/String; = "MagicShot"

.field public static final OUTOFFOCUS:Ljava/lang/String; = "OufOfFocus"

.field public static final PANORAMA:Ljava/lang/String; = "Panorama"

.field public static final PRIVATE:Ljava/lang/String; = "Private"

.field public static final RECYCLE_BIN:Ljava/lang/String; = "RecycleBin"

.field public static final SCLOUD:Ljava/lang/String; = "Scloud"

.field public static final SCLOUD_VIEW:Ljava/lang/String; = "ScloudView"

.field public static final SCREENSHOT:Ljava/lang/String; = "DCIM/Screenshots"

.field public static final SELFIE:Ljava/lang/String; = "Selfie"

.field public static final SHOT_MODE_NAME_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOWMOTION:Ljava/lang/String; = "SlowMotion"

.field public static final SOUNDANDSHOT:Ljava/lang/String; = "SoundAndShot"

.field public static final SURROUNDSHOT:Ljava/lang/String; = "SurroundShot"

.field public static final VIDEOS:Ljava/lang/String; = "Videos"

.field public static final VIDEO_COLLAGE:Ljava/lang/String; = "DCIM/Collage"

.field public static final VIDEO_EDITOR:Ljava/lang/String; = "DCIM/Video Editor"

.field public static final VIRTUALSHOT:Ljava/lang/String; = "VirtualShot"

.field public static final WECHAT_SIGHT:Ljava/lang/String; = "DCIM/WeChat Sight"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0a00de

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x8e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Panorama"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SlowMotion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "FastMotion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Hyperlapse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ClipStudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x840

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OufOfFocus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const v1, 0x7f0a03b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Selfie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x960

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AnimatedGif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x8d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VirtualShot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0xa20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "FlipPhoto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MagicShot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SoundAndShot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0x950

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SurroundShot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    const/16 v1, 0xa50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Camera360"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DCIM/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    const-string/jumbo v1, "Favourites"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Favourites"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "/storage/extSdCard/DCIM/CoverCamera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_COLLAGE_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a037c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a038e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0863

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a04c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    const-string/jumbo v1, "/storage/Private/"

    const v2, 0x7f0a033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_ORIGINAL_NAME_LIST:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object v1, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOriginalBucketName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-object v4, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_ORIGINAL_NAME_LIST:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    sget-object v4, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_NAME_LIST:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v5, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_ORIGINAL_NAME_LIST:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_ORIGINAL_NAME_LIST:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0
.end method
