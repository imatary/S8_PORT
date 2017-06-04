.class public Lcom/sec/android/app/ve/common/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static EXPORT_PATH:Ljava/lang/String;

.field public static FIXED_PREVIEW_HEIGHT:I

.field public static FIXED_PREVIEW_WIDTH:I

.field public static KENBURN_HEIGHT:I

.field public static KENBURN_WIDTH:I

.field public static final LAUNCHER_THUMB_HEIGHT:I

.field public static final LAUNCHER_THUMB_WIDTH:I

.field public static MAX_SUPPORTED_VIDEO_FILE_SIZE:J

.field public static PREVIEW_HEIGHT:I

.field public static PREVIEW_WIDTH:I

.field public static ROTATE_LEFT:I

.field public static ROTATE_RIGHT:I

.field public static STORYBOARD_TIME_LIMIT:I

.field public static THUMBNAIL_HALF_IMAGE_SIZE:I

.field public static THUMBNAIL_IMAGE_HEIGHT:I

.field public static THUMBNAIL_IMAGE_HEIGHT1:I

.field public static THUMBNAIL_IMAGE_INTERNAL_PADDING:I

.field public static THUMBNAIL_IMAGE_SIZE:I

.field public static isHDMovieLockRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Video Editor/Export/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/common/ConfigUtils;->EXPORT_PATH:Ljava/lang/String;

    const v0, 0xa4cb80

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->STORYBOARD_TIME_LIMIT:I

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/sec/android/app/ve/common/ConfigUtils;->MAX_SUPPORTED_VIDEO_FILE_SIZE:J

    sget v0, Lcom/sec/android/app/ve/R$dimen;->launcher_unselitem_width:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->LAUNCHER_THUMB_WIDTH:I

    sget v0, Lcom/sec/android/app/ve/R$dimen;->launcher_unselitem_height:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->LAUNCHER_THUMB_HEIGHT:I

    const/16 v0, 0x1f1

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_WIDTH:I

    const/16 v0, 0x110

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_HEIGHT:I

    const/16 v0, 0x500

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    const/16 v0, 0x2d0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    sget v0, Lcom/sec/android/app/ve/R$dimen;->PreviewGroup_width:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->KENBURN_WIDTH:I

    sget v0, Lcom/sec/android/app/ve/R$dimen;->PreviewGroup_height:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->KENBURN_HEIGHT:I

    const/16 v0, 0xb0

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_IMAGE_SIZE:I

    sput v2, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_IMAGE_INTERNAL_PADDING:I

    const/16 v0, 0x63

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_IMAGE_HEIGHT:I

    const/16 v0, 0xa8

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_IMAGE_HEIGHT1:I

    sget v0, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_IMAGE_SIZE:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->THUMBNAIL_HALF_IMAGE_SIZE:I

    sput v2, Lcom/sec/android/app/ve/common/ConfigUtils;->ROTATE_LEFT:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/ve/common/ConfigUtils;->ROTATE_RIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/common/ConfigUtils;->isHDMovieLockRequired:Z

    return-void
.end method
