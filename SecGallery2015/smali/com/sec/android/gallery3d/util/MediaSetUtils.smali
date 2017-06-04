.class public Lcom/sec/android/gallery3d/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static final ANIMATED_BUCKET_ID:I

.field public static final ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

.field public static final BIXBY_VISION_BUCKET_ID:I

.field public static final BIXBY_VISION_DIR:Ljava/lang/String;

.field public static final CAMERA_BUCKET_ID:I

.field public static final CAMERA_DIR:Ljava/lang/String;

.field public static final CLOUD_CACHE_DIR:Ljava/lang/String;

.field public static final COLLAGE_ALBUM_DIR:Ljava/lang/String;

.field public static final COLLAGE_BUCKET_ID:I

.field public static final COVER_CAMERA_ALBUM_DIR:Ljava/lang/String;

.field public static final COVER_CAMERA_BUCKET_ID:I

.field public static final DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

.field public static final DOWNLOAD_ALBUM_DIR:Ljava/lang/String;

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field public static final GEAR_360_ALBUM_DIR:Ljava/lang/String;

.field public static final GEAR_360_BUCKET_ID:I

.field public static final GEAR_ALBUM_DIR:Ljava/lang/String;

.field public static final GEAR_BUCKET_ID:I

.field public static final HIGHLIGHT_ALBUM_DIR:Ljava/lang/String;

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_SDCARD:Ljava/lang/String; = "/NoSdCard/"

.field public static final PHOTO_EDITOR_BUCKET_ID:I

.field public static final PRIVATE_ALBUM_DIR:Ljava/lang/String; = "/storage/Private"

.field public static REMOVABLE_SD_DIR_PATH:Ljava/lang/String; = null

.field public static final RETAIL_FAMILY_BUCKET_ID:I

.field public static final RETAIL_FAMILY_DIR:Ljava/lang/String;

.field public static final RETAIL_FOOD_BUCKET_ID:I

.field public static final RETAIL_FOOD_DIR:Ljava/lang/String;

.field public static final RETAIL_FRIENDS_BUCKET_ID:I

.field public static final RETAIL_FRIENDS_DIR:Ljava/lang/String;

.field public static final RETAIL_GALAXY_S8_BUCKET_ID:I

.field public static final RETAIL_GALAXY_S8_DIR:Ljava/lang/String;

.field public static final RETAIL_INFINITY_DISPLAY_BUCKET_ID:I

.field public static final RETAIL_INFINITY_DISPLAY_DIR:Ljava/lang/String;

.field public static final RETAIL_LIKES_BUCKET_ID:I

.field public static final RETAIL_LIKES_DIR:Ljava/lang/String;

.field public static final RETAIL_MARKET_TOUR_BUCKET_ID:I

.field public static final RETAIL_MARKET_TOUR_DIR:Ljava/lang/String;

.field private static final RETAIL_MEDIA_DIR:Ljava/lang/String;

.field public static final RETAIL_MUSIC_BUCKET_ID:I

.field public static final RETAIL_MUSIC_DIR:Ljava/lang/String;

.field public static final RETAIL_OUTDOORS_BUCKET_ID:I

.field public static final RETAIL_OUTDOORS_DIR:Ljava/lang/String;

.field public static final RETAIL_PARTY_BUCKET_ID:I

.field public static final RETAIL_PARTY_DIR:Ljava/lang/String;

.field public static final RETAIL_SELFIES_BUCKET_ID:I

.field public static final RETAIL_SELFIES_DIR:Ljava/lang/String;

.field public static final RETAIL_TRIP_BUCKET_ID:I

.field public static final RETAIL_TRIP_DIR:Ljava/lang/String;

.field public static final RETAIL_VIDEO_BUCKET_ID:I

.field public static final RETAIL_VIDEO_DIR:Ljava/lang/String;

.field public static final RETAIL_VISIT_BUCKET_ID:I

.field public static final RETAIL_VISIT_DIR:Ljava/lang/String;

.field public static final SCREENSHOT_ALBUM_DIR:Ljava/lang/String;

.field public static final SCREENSHOT_BUCKET_ID:I

.field public static final SCREEN_VIDEO_ALBUM_BUCKET_ID:I

.field public static SDCARD_CAMERA_BUCKET_ID:I = 0x0

.field public static final SDCARD_COVER_CAMERA_ALBUM_DIR:Ljava/lang/String; = "/storage/extSdCard/DCIM/CoverCamera"

.field public static SDCARD_COVER_CAMERA_BUCKET_ID:I

.field public static SDCARD_DIR:Ljava/lang/String;

.field public static SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

.field public static SDCARD_WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

.field public static final VIDEO_COLLAGE_ALBUM_DIR:Ljava/lang/String;

.field public static final VIDEO_EDITOR_ALBUM_DIR:Ljava/lang/String;

.field public static final VIDEO_EDITOR_BUCKET_ID:I

.field public static final VIDEO_SCREENSHOT_BUCKET_ID:I

.field public static final WECHATSIGHT_ALBUM_BUCKET_ID:I

.field public static final WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;-><init>(Lcom/sec/android/gallery3d/util/MediaSetUtils$1;)V

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/RetailMedia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cloudagent/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CLOUD_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/WeChat Sight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Video Editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Animated GIF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Highlight Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->HIGHLIGHT_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_COLLAGE_ALBUM_DIR:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_COLLAGE_ALBUM_DIR:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Pictures/Gear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Gear 360"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Bixby Vision"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Infinity display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Galaxy S8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Selfies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Friends"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Trip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Outdoors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Food"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Family"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Party"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Market Tour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Visit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Likes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Image/Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Photo editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->PHOTO_EDITOR_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_BUCKET_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Screen video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREEN_VIDEO_ALBUM_BUCKET_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/VideoScreenShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_SCREENSHOT_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_BUCKET_ID:I

    const-string/jumbo v0, "/storage/extSdCard/DCIM/CoverCamera"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    const-string/jumbo v0, "/storage/extSdCard/DCIM/Camera"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    const-string/jumbo v0, "/storage/extSdCard/DCIM/WeChat Sight/"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->BIXBY_VISION_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_BUCKET_ID:I

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_BUCKET_ID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderpathFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSdCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/StorageManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/StorageManagerFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/lib/factory/StorageManagerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/StorageManagerInterface;

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/StorageManagerInterface;->getSdCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->getSdCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/WeChat Sight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    return-void
.end method

.method public static isCameraPath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLDURetailMediaPath(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MEDIA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardCameraPath(Ljava/lang/String;)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSDCardPath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
