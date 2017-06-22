.class public Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.cmh"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final COMMA_SPACE:Ljava/lang/String; = ", "

.field private static final DEBUG_LOGS:Z = false

.field public static final DOWNLOADED_CPU_FILTERS:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.downloadCPUfilters"

.field private static final EXIF_TAGS:[I

.field public static final EXTERNAL_STORAGE:Ljava/lang/String;

.field public static final GALLERY_PACKAGE:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final GALLERY_URI:Landroid/net/Uri;

.field public static final HISTORY_PATH:Ljava/lang/String;

.field public static final NOT_SUPPORT_CLOUD_FILE:I = 0x3

.field public static final NOT_SUPPORT_FILE:I = 0x0

.field private static final OPENGL_LOGS:Z = false

.field public static final PACKAGE:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PERMISSION_SP:Ljava/lang/String; = "permission_sp"

.field public static final PRIVATE_KEY_MD5:Ljava/lang/String; = "C393F2805E4E7718E36F532CAADAFCE8"

.field private static final PermissionShownBeforeAGIF:Ljava/lang/String; = "permission_agif"

.field private static final PermissionShownBeforeCollage:Ljava/lang/String; = "permission_collage"

.field private static final PermissionShownBeforeDE:Ljava/lang/String; = "permission_de"

.field private static final PermissionShownBeforePE:Ljava/lang/String; = "permission_pe"

.field public static final SCROLL_CAPTURE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.scrollcapture"

.field public static final SCROLL_CAPTURE_URI:Landroid/net/Uri;

.field public static final SMALL_BITMAP_INPUT_FILE:I = 0x1

.field public static final SMARTCROPVIEW_TABLE_NAME:Ljava/lang/String; = "smartcropview"

.field public static final SMARTCROP_VIEW_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "PEDIT_Utils"

.field public static final TEMP_CAMERA_PATH:Ljava/lang/String;

.field public static final TYPE_JPG:I = 0x0

.field public static final TYPE_PNG:I = 0x1

.field public static applyCounterValue:I = 0x0

.field public static extras:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static filters:[Ljava/lang/String; = null

.field public static isImageEnhanced:Z = false

.field public static isIntentFromGallery:Z = false

.field public static isNewInstance:Z = false

.field public static isNewIntentFromCapture:Z = false

.field public static isNewIntentFromGallery:Z = false

.field public static isSEFFlag:Z = false

.field public static isTaskRunning:Z = false

.field private static mAutoEnhanceFeature:Z = false

.field private static mDateTaken:Ljava/lang/String; = null

.field static mGPUEffectNames:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsFavoriteImage:I = 0x0

.field private static mIsPng:Z = false

.field private static mLabelStyleNum:I = 0x0

.field public static mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity; = null

.field private static mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler; = null

.field private static final mSalesCode:Ljava/lang/String;

.field public static newInstanceTaskId:I = 0x0

.field public static newMotionInstanceTaskId:I = 0x0

.field public static parentMotionTaskId:I = 0x0

.field public static parentTaskId:I = 0x0

.field public static redoCounterValue:I = 0x0

.field public static sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching; = null

.field private static final stickeXmlIsGIf:Ljava/lang/String; = "is_gif"

.field private static final stickerXmlName:Ljava/lang/String; = "name"

.field public static undoCounterValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Studio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->TEMP_CAMERA_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->TEMP_CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempHistoryInfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->HISTORY_PATH:Ljava/lang/String;

    const-string v0, "android-app://com.sec.android.gallery3d"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->GALLERY_URI:Landroid/net/Uri;

    const-string v0, "android-app://com.samsung.android.app.scrollcapture"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->SCROLL_CAPTURE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smartcropview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    const/16 v0, 0x16

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME:I

    aput v1, v0, v3

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    aput v1, v0, v5

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SOFTWARE:I

    aput v1, v0, v6

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKE:I

    aput v1, v0, v7

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MODEL:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASH:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE_REF:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE_REF:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE_REF:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TIME_STAMP:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DATE_STAMP:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_WHITE_BALANCE:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_LENGTH:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_F_NUMBER:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_TIME:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ISO_SPEED_RATINGS:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ORIENTATION:I

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXIF_TAGS:[I

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTaskRunning:Z

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSEFFlag:Z

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyCounterValue:I

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->undoCounterValue:I

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->redoCounterValue:I

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromCapture:Z

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    const-string v0, ""

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsPng:Z

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mAutoEnhanceFeature:Z

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isImageEnhanced:Z

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsFavoriteImage:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$1;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$1;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newMotionInstanceTaskId:I

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    sput v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mLabelStyleNum:I

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mSalesCode:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.filter"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.provider.filterprovider"

    aput-object v1, v0, v5

    const-string v1, "com.candycamera.android.filter"

    aput-object v1, v0, v6

    const-string v1, "com.thundersoft.ucamera.filter"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.pinguo.camera360filter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.linecorp.aillis.filter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.thundersoft.ucamera.filter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pinguo.camera360filter"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.linecorp.b612.filter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.candycamera.android.filter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->filters:[Ljava/lang/String;

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewInstance:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConfigureSALog(Landroid/app/Application;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "406-399-989949"

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    const-string v1, "8.1"

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :cond_0
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 12

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-eqz p6, :cond_0

    const-string v8, "/"

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    :cond_0
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    if-eqz p6, :cond_1

    if-eqz p7, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v4, 0x0

    :cond_1
    if-nez p1, :cond_7

    if-eqz p7, :cond_7

    const-string v8, "."

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    const/4 v8, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v8, "title"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v8, "_display_name"

    move-object/from16 v0, p7

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "date_modified"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "is_favorite"

    sget v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsFavoriteImage:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_8

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-boolean v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSEFFlag:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSEFFlag:Z

    const-string v8, "sef_file_type"

    const/16 v9, 0x800

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    if-eqz p7, :cond_3

    const-string v8, ".png"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "mime_type"

    const-string v9, "image/png"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const-string v8, "_size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p4, :cond_4

    const-string v8, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v8, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_4
    const-string v8, "width"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "height"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p6, :cond_5

    if-eqz p7, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    :cond_6
    move-object/from16 p1, p7

    goto/16 :goto_0

    :cond_7
    const-string v8, "title"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static addToExtraArray(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static applyAutoEnhance(Landroid/content/Context;[I[IIIII[Landroid/graphics/Rect;)V
    .locals 10

    new-array v6, p5, [Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p5, :cond_0

    const-string v0, "PEDIT_AutoAdjust"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRect["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p7, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;

    aget-object v1, p7, v8

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aget-object v2, p7, v8

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p7, v8

    iget v3, v3, Landroid/graphics/Rect;->right:I

    aget-object v4, p7, v8

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;-><init>(IIII)V

    aput-object v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p6

    move v5, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhancePE;->enhanceImage([I[IIIII[Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;Landroid/content/Context;)I

    move-result v9

    const-string v0, "PEDIT_AutoAdjust"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Utils.applyAutoEnhance ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static applyBitmapMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    neg-int v3, p2

    int-to-float v3, v3

    neg-int v4, p3

    int-to-float v4, v4

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static area(FFFFFF)F
    .locals 2

    sub-float v0, p3, p5

    mul-float/2addr v0, p0

    sub-float v1, p5, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    sub-float v1, p1, p3

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static broadcastGsimLogs(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static caculaterBottomButtonWidth(Landroid/view/View;Landroid/content/Context;IZ)V
    .locals 11

    const v6, 0x7f0805e9

    const v10, 0x7f0800e7

    const v9, 0x7f0800e6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS3Device()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    mul-int v3, v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v3

    if-le v5, v4, :cond_4

    rem-int v5, v3, p2

    sub-int/2addr v3, v5

    :goto_1
    rem-int v5, v3, p2

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_2
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v1, v5, v6

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0804b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v1, v5, v6

    goto/16 :goto_0

    :cond_4
    mul-int/lit8 v5, v1, 0x2

    sub-int v3, v4, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2
.end method

.method public static checkCameraPermission(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkForChangePlayerSupport(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    instance-of v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isEnableNearby()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isEnableNearbyDMR()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkForScreenMirroringSupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isEnableWfd(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkForScreenSharingSupport(Landroid/hardware/display/DisplayManager;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-array v4, v7, [Ljava/lang/Class;

    const-string v7, "android.hardware.display.DisplayManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v7, "semCheckScreenSharingSupported"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string v7, "PEDIT_Utils"

    const-string v8, "ClassNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v7, "PEDIT_Utils"

    const-string v8, "NoSuchMethodException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v7, "PEDIT_Utils"

    const-string v8, "InvocationTargetException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v7, "PEDIT_Utils"

    const-string v8, "IllegalAccessException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkIfHugeFont(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkIfIntentFromCapture(Landroid/net/Uri;)V
    .locals 2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->SCROLL_CAPTURE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromCapture:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromCapture:Z

    goto :goto_0
.end method

.method public static checkIfIntentFromGallery(Landroid/net/Uri;)V
    .locals 2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->GALLERY_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    goto :goto_0
.end method

.method public static checkStoragePermission(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkValueDimeninMultiwindows(Landroid/app/Activity;)F
    .locals 9

    const/16 v8, 0x3d

    const/16 v7, 0x38

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    const-string v4, ""

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08026b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v5, v1

    float-to-int v2, v5

    div-int/lit8 v3, v2, 0xa

    rem-int/lit8 v0, v2, 0xa

    const/16 v5, 0x16

    if-ne v3, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "220 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "land"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    const-string v5, "currentdimen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current folder dimen "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " density:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v5, v2

    return v5

    :cond_1
    const/16 v5, 0x17

    if-ne v3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "220 x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/16 v5, 0x18

    if-ne v3, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "220 xx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/16 v5, 0x20

    if-ne v3, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "320 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x24

    if-ne v3, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    if-ne v3, v7, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 xx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x42

    if-ne v3, v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 xxx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    if-ne v3, v7, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "316 x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x25

    if-ne v3, v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "360 h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x180

    if-ne v3, v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "384 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x29

    if-ne v3, v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "411 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "411 xxx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x2a

    if-ne v3, v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "411 xx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x26

    if-ne v3, v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "380 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x27

    if-ne v3, v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "384 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x50

    if-ne v3, v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "800 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x51

    if-ne v3, v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "800 mdpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x52

    if-ne v3, v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "800 hdpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_14
    if-ne v3, v8, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "600 tvpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_15
    if-ne v3, v8, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "600 tvpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x4c

    if-ne v3, v5, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "768 mdpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x4d

    if-ne v3, v5, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "768 xhdpi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static convertARGBToYUV([III)[B
    .locals 17

    mul-int v8, p1, p2

    mul-int v15, p1, p2

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v15, v15, 0x2

    new-array v14, v15, [B

    const/4 v13, 0x0

    move v12, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_8

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_7

    aget v15, p0, v10

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    shr-int/lit8 v7, v15, 0x18

    aget v15, p0, v10

    const/high16 v16, 0xff0000

    and-int v15, v15, v16

    shr-int/lit8 v3, v15, 0x10

    aget v15, p0, v10

    const v16, 0xff00

    and-int v15, v15, v16

    shr-int/lit8 v2, v15, 0x8

    aget v15, p0, v10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v1, v15, 0x0

    mul-int/lit8 v15, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/lit8 v16, v1, 0x19

    add-int v15, v15, v16

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit8 v6, v15, 0x10

    mul-int/lit8 v15, v3, -0x26

    mul-int/lit8 v16, v2, 0x4a

    sub-int v15, v15, v16

    mul-int/lit8 v16, v1, 0x70

    add-int v15, v15, v16

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v4, v15, 0x80

    mul-int/lit8 v15, v3, 0x70

    mul-int/lit8 v16, v2, 0x5e

    sub-int v15, v15, v16

    mul-int/lit8 v16, v1, 0x12

    sub-int v15, v15, v16

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v5, v15, 0x80

    if-gez v6, :cond_4

    const/4 v6, 0x0

    :cond_0
    :goto_2
    int-to-byte v15, v6

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    rem-int/lit8 v15, v11, 0x2

    if-nez v15, :cond_3

    rem-int/lit8 v15, v10, 0x2

    if-nez v15, :cond_3

    array-length v15, v14

    add-int/lit8 v15, v15, -0x2

    if-ge v12, v15, :cond_3

    if-gez v5, :cond_5

    const/4 v5, 0x0

    :cond_1
    :goto_3
    int-to-byte v15, v5

    aput-byte v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    if-gez v4, :cond_6

    const/4 v4, 0x0

    :cond_2
    :goto_4
    int-to-byte v15, v4

    aput-byte v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/16 v15, 0xff

    if-le v6, v15, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    :cond_5
    const/16 v15, 0xff

    if-le v5, v15, :cond_1

    const/16 v5, 0xff

    goto :goto_3

    :cond_6
    const/16 v15, 0xff

    if-le v4, v15, :cond_2

    const/16 v4, 0xff

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v14
.end method

.method public static convertARGBToYUV([III[I)[B
    .locals 18

    const/16 v17, 0x0

    rem-int/lit8 v16, p1, 0x2

    if-nez v16, :cond_4

    move/from16 v16, p1

    :goto_0
    aput v16, p3, v17

    const/16 v16, 0x1

    rem-int/lit8 v17, p2, 0x2

    if-nez v17, :cond_5

    :goto_1
    aput p2, p3, v16

    const/16 v16, 0x0

    aget v16, p3, v16

    const/16 v17, 0x1

    aget v17, p3, v17

    mul-int v16, v16, v17

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    new-array v15, v0, [B

    const/16 v16, 0x0

    aget v16, p3, v16

    const/16 v17, 0x1

    aget v17, p3, v17

    mul-int v7, v16, v17

    const/4 v13, 0x0

    move v11, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v16, 0x1

    aget v16, p3, v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    const/4 v8, 0x0

    :goto_3
    const/16 v16, 0x0

    aget v16, p3, v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_9

    mul-int v16, v10, p1

    add-int v9, v16, v8

    aget v16, p0, v9

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    shr-int/lit8 v3, v16, 0x10

    aget v16, p0, v9

    const v17, 0xff00

    and-int v16, v16, v17

    shr-int/lit8 v2, v16, 0x8

    aget v16, p0, v9

    move/from16 v0, v16

    and-int/lit16 v1, v0, 0xff

    mul-int/lit8 v16, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x19

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    add-int/lit8 v6, v16, 0x10

    add-int/lit8 v14, v13, 0x1

    if-gez v6, :cond_6

    const/4 v6, 0x0

    :cond_0
    :goto_4
    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, v15, v13

    rem-int/lit8 v16, v10, 0x2

    if-nez v16, :cond_3

    rem-int/lit8 v16, v8, 0x2

    if-nez v16, :cond_3

    mul-int/lit8 v16, v3, -0x26

    mul-int/lit8 v17, v2, 0x4a

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x70

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v4, v0, 0x80

    mul-int/lit8 v16, v3, 0x70

    mul-int/lit8 v17, v2, 0x5e

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x12

    sub-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v5, v0, 0x80

    add-int/lit8 v12, v11, 0x1

    if-gez v5, :cond_7

    const/4 v5, 0x0

    :cond_1
    :goto_5
    int-to-byte v0, v5

    move/from16 v16, v0

    aput-byte v16, v15, v11

    add-int/lit8 v11, v12, 0x1

    if-gez v4, :cond_8

    const/4 v4, 0x0

    :cond_2
    :goto_6
    int-to-byte v0, v4

    move/from16 v16, v0

    aput-byte v16, v15, v12

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move v13, v14

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v16, p1, -0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v6, v0, :cond_0

    const/16 v6, 0xff

    goto :goto_4

    :cond_7
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v5, v0, :cond_1

    const/16 v5, 0xff

    goto :goto_5

    :cond_8
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v4, v0, :cond_2

    const/16 v4, 0xff

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v15
.end method

.method public static convertIntentFromLauncher(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "selectedItems"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v3, "selectedCount"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "path"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static convertStringToDouble(Ljava/lang/String;)D
    .locals 8

    const-wide v2, 0x408f380000000000L    # 999.0

    :try_start_0
    const-string v4, ","

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "/"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/Double;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    new-instance v6, Ljava/lang/Double;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double v2, v4, v6

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string v5, "/"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/Double;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    new-instance v6, Ljava/lang/Double;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const-string v5, "/"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/Double;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    new-instance v6, Ljava/lang/Double;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    :goto_0
    return-wide v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static convertToIntArray([B)[I
    .locals 3

    array-length v2, p0

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertYUVToARGB([I[BII[I)V
    .locals 19

    const/16 v16, 0x0

    aget v16, p4, v16

    const/16 v17, 0x1

    aget v17, p4, v17

    mul-int v2, v16, v17

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v16, 0x1

    aget v16, p4, v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    shr-int/lit8 v16, v6, 0x1

    const/16 v17, 0x0

    aget v17, p4, v17

    shr-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x1

    mul-int v16, v16, v17

    add-int v9, v2, v16

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v16, 0x0

    aget v16, p4, v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_8

    mul-int v16, v6, p2

    add-int v5, v16, v4

    add-int/lit8 v15, v14, 0x1

    aget-byte v16, p1, v14

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v12, v16, -0x10

    if-gez v12, :cond_0

    const/4 v12, 0x0

    :cond_0
    rem-int/lit8 v16, v4, 0x2

    if-nez v16, :cond_1

    add-int/lit8 v10, v9, 0x1

    aget-byte v16, p1, v9

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v11, v16, -0x80

    add-int/lit8 v9, v10, 0x1

    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v8, v16, -0x80

    :cond_1
    mul-int/lit16 v13, v12, 0x4a8

    mul-int/lit16 v0, v11, 0x662

    move/from16 v16, v0

    add-int v7, v13, v16

    mul-int/lit16 v0, v11, 0x341

    move/from16 v16, v0

    sub-int v16, v13, v16

    mul-int/lit16 v0, v8, 0x190

    move/from16 v17, v0

    sub-int v3, v16, v17

    mul-int/lit16 v0, v8, 0x812

    move/from16 v16, v0

    add-int v1, v13, v16

    if-gez v7, :cond_5

    const/4 v7, 0x0

    :cond_2
    :goto_2
    if-gez v3, :cond_6

    const/4 v3, 0x0

    :cond_3
    :goto_3
    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_4
    :goto_4
    const/high16 v16, -0x1000000

    shl-int/lit8 v17, v7, 0x6

    const/high16 v18, 0xff0000

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v3, 0x2

    const v18, 0xff00

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v1, 0xa

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    aput v16, p0, v5

    add-int/lit8 v4, v4, 0x1

    move v14, v15

    goto :goto_1

    :cond_5
    const v16, 0x3ffff

    move/from16 v0, v16

    if-le v7, v0, :cond_2

    const v7, 0x3ffff

    goto :goto_2

    :cond_6
    const v16, 0x3ffff

    move/from16 v0, v16

    if-le v3, v0, :cond_3

    const v3, 0x3ffff

    goto :goto_3

    :cond_7
    const v16, 0x3ffff

    move/from16 v0, v16

    if-le v1, v0, :cond_4

    const v1, 0x3ffff

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static copyExif(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getTagId()S

    move-result v7

    sget v8, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME:I

    if-ne v7, v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->setTimeValue(J)Z

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getTagId()S

    move-result v7

    sget v8, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ORIENTATION:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v10}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->setValue(I)Z

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sget v6, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ORIENTATION:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "JW orientation set"

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTags(Ljava/util/Collection;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GallerExifInterface end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logI(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v1, 0x0

    :cond_5
    return-object v1
.end method

.method public static deInitilizeArray()V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public static deRegister(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    :cond_0
    return-void
.end method

.method public static deRegisterMotion(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    :cond_0
    return-void
.end method

.method public static decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static doProcess(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v2, "PEDIT_Utils"

    const-string v3, "doProcess failed because null input "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, p1, p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportedGPUEffect(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, p3}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->setEffectFilter(I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->doProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v1, :cond_1

    const-string v2, "PEDIT_Utils"

    const-string v3, "ret bitmap is null, updated by input bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "PEDIT_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doProcess failed @ id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static enableAutoEnhance(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mAutoEnhanceFeature:Z

    return-void
.end method

.method public static finishPEService()V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finishPEService()V

    :cond_0
    return-void
.end method

.method public static get3persentForSticker(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static get4persentForSticker(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static get5persentForLabel(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static get6persentForLabel(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setRenderScriptCacheDir(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v4, v6}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v4, v0, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    int-to-float v6, p2

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCircleMaskedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    neg-int v3, p1

    int-to-float v3, v3

    neg-int v4, p2

    int-to-float v4, v4

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static getContenDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const v3, 0x7f070090

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070298

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static getDateTaken()J
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDateTakenFromFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "datetaken"

    aput-object v3, v2, v5

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_2

    const-string v0, "datetaken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getDirFromSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v3, 0x9

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_0
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    :cond_2
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getDpToPixel(Landroid/content/Context;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method public static getFavoriteFromFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "is_favorite"

    aput-object v3, v2, v5

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string v0, "is_favorite"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsFavoriteImage:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getGPUEffectNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mGPUEffectNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v7, 0x0

    return-object v10

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_data"

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0
.end method

.method public static getLabelStyleNum()I
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mLabelStyleNum:I

    return v0
.end method

.method public static getLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 14

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportExifInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportExifInterface(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v5, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v11, "GPSLatitude"

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "GPSLongitude"

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "GPSLatitudeRef"

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "GPSLongitudeRef"

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-nez v10, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertStringToDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpl-double v11, v2, v12

    if-lez v11, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertStringToDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpl-double v11, v6, v12

    if-lez v11, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const-string v11, "S"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    neg-double v2, v2

    :cond_7
    const-string v11, "W"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    neg-double v6, v6

    :cond_8
    new-instance v4, Landroid/location/Location;

    const-string v11, "exif"

    invoke-direct {v4, v11}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v11, "GPSLatitude"

    invoke-virtual {v1, v11, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "GPSLatitudeRef"

    invoke-virtual {v1, v11, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "GPSLongitude"

    invoke-virtual {v1, v11, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "GPSLongitudeRef"

    invoke-virtual {v1, v11, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static getMostRecentImageUrisList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-gtz p1, :cond_1

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "datetaken DESC"

    invoke-static {v7, v0, v8, v9, v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v6

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v5, v6

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_5

    if-ge v3, v4, :cond_4

    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v5, v6

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getMotionTaskId()I
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getTaskId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->initialize()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPathIfHiddenFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v4, v3

    goto :goto_0

    :cond_1
    const-string v4, "_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v3

    goto :goto_0
.end method

.method public static getPathIfHiddenFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getPerpendicularFromLine(FFFFFF)F
    .locals 6

    cmpl-float v2, p0, p2

    if-nez v2, :cond_0

    sub-float v2, p4, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_0
    return v2

    :cond_0
    sub-float v2, p1, p3

    sub-float v3, p2, p0

    div-float v0, v2, v3

    sub-float v2, p3, p1

    mul-float/2addr v2, p0

    sub-float v3, p2, p0

    div-float/2addr v2, v3

    sub-float v1, v2, p1

    mul-float v2, v0, p4

    add-float/2addr v2, p5

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    mul-float v4, v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method public static getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPointOfIntersection(FFFFFFFF)[F
    .locals 8

    const/4 v5, 0x2

    new-array v4, v5, [F

    cmpl-float v5, p0, p2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aput p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    sub-float/2addr v6, p4

    sub-float v7, p7, p5

    mul-float/2addr v6, v7

    sub-float v7, p6, p4

    div-float/2addr v6, v7

    add-float/2addr v6, p5

    aput v6, v4, v5

    :goto_0
    return-object v4

    :cond_0
    cmpl-float v5, p4, p6

    if-nez v5, :cond_1

    const/4 v5, 0x0

    aput p4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    sub-float/2addr v6, p0

    sub-float v7, p3, p1

    mul-float/2addr v6, v7

    sub-float v7, p2, p0

    div-float/2addr v6, v7

    add-float/2addr v6, p1

    aput v6, v4, v5

    goto :goto_0

    :cond_1
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v2, v5, v6

    sub-float v5, p1, p3

    mul-float/2addr v5, p0

    sub-float v6, p2, p0

    div-float/2addr v5, v6

    add-float v0, p1, v5

    sub-float v5, p7, p5

    sub-float v6, p6, p4

    div-float v3, v5, v6

    sub-float v5, p5, p7

    mul-float/2addr v5, p4

    sub-float v6, p6, p4

    div-float/2addr v5, v6

    add-float v1, p5, v5

    const/4 v5, 0x0

    sub-float v6, v1, v0

    sub-float v7, v2, v3

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v0

    aput v6, v4, v5

    goto :goto_0
.end method

.method public static getPreviewSizeForAdjustment(Landroid/content/Context;)[I
    .locals 10

    const v9, 0x7f0800c2

    const v8, 0x7f0800c1

    const v7, 0x7f0800bf

    const v6, 0x7f0800be

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v5, 0x3

    aput v0, v4, v5

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 3

    const-string v0, "PEDIT_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProductName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getReferencePoints([FLandroid/graphics/RectF;)[F
    .locals 10

    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v2, 0x0

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v9, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    const/4 v2, 0x0

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v8, v0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p0, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v0

    div-float v6, v0, v9

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v0

    div-float v7, v0, v8

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v7, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v9

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v8

    aput v2, v0, v1

    return-object v0
.end method

.method public static getResizeRatio(FF)F
    .locals 4

    div-float v0, p0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method public static getSampleSize(II)I
    .locals 3

    const/4 v1, 0x1

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    div-int v2, p0, v0

    if-le v2, p1, :cond_0

    move v1, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public static getSaveDirPath(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Landroid/graphics/Bitmap;II)Ljava/lang/String;
    .locals 19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getSimpleDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNotSupportFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isPng()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v14, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "make directory!!, fail"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_2
    return-object v1

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v17, Ljava/io/File;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    :cond_4
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    new-instance v17, Ljava/io/File;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    :cond_6
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    new-instance v18, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v12, v1, :cond_a

    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->copyExif(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    move-result-object v16

    :cond_9
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v1, "failed to give write permission..."

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_a
    if-eqz v16, :cond_c

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v15

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v15, :cond_d

    :try_start_2
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateMediaDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v1, 0x64

    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v10, v11

    goto :goto_3

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_d
    if-eqz v10, :cond_b

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v9

    :goto_5
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_e

    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_e
    if-eqz v10, :cond_b

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v15, :cond_10

    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_f
    :goto_7
    throw v1

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_10
    if-eqz v10, :cond_f

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v10, v11

    goto :goto_6

    :catch_8
    move-exception v9

    move-object v10, v11

    goto :goto_5
.end method

.method public static getScreenRatio(IILandroid/content/Context;)F
    .locals 13

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v6

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v5

    new-instance v0, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v6

    int-to-float v12, v5

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v9, 0x9

    new-array v3, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    new-instance v1, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, p0

    int-to-float v12, p1

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v0, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v9, 0x0

    aget v7, v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v4, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v9, 0x0

    aget v8, v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    return v9
.end method

.method public static getSquareMaskedBitmap(Landroid/graphics/Bitmap;FFFFFFF)Landroid/graphics/Bitmap;
    .locals 14

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, p3

    float-to-int v9, v0

    move/from16 v0, p4

    float-to-int v10, v0

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, p6

    float-to-int v9, v0

    move/from16 v0, p7

    float-to-int v10, v0

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, p3, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v3, p4, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v9, 0x43340000    # 180.0f

    mul-float v9, v9, p5

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    neg-float v9, p1

    move/from16 v0, p2

    neg-float v10, v0

    invoke-virtual {v8, p0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v7
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTaskId()I
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getTaskId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getWindowBound(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "android.app.ActivityManagerNative"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getDefault"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v5, "getTaskBounds"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    return-object v4
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 10

    const/4 v5, 0x0

    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v6

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08060a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08059f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_3

    sub-int/2addr v5, v2

    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Utils::getWindowHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " caller = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    return v5

    :cond_3
    sub-int/2addr v5, v2

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080609

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    sub-int/2addr v5, v7

    goto :goto_0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Utils::getWindowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    return v0
.end method

.method public static final gl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static hasMotionInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPEInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPEInstanceSerivceActive()Z
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPermissionDialogShownAGIF(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "permission_sp"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "permission_agif"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "permission_agif"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static hasPermissionDialogShownCollage(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "permission_sp"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "permission_collage"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "permission_collage"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static hasPermissionDialogShownDE(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "permission_sp"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "permission_de"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "permission_de"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static hasPermissionDialogShownPE(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "permission_sp"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "permission_pe"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "permission_pe"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static initilizeArray()V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    return-void
.end method

.method public static insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertLogMultipleFeature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->extras:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    const-string v5, "app_id"

    const-string v6, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "feature"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v2

    const-string v6, "extra"

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static insertScreenViewSALog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static is360Image(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "sef_file_type=? AND _data=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "2640"

    aput-object v5, v4, v8

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0
.end method

.method public static isA9Device()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAdvancedModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gracer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-02J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-03J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCV36"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCV35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SGH-N206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SGH-N171"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NVX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MUW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "great"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBitMaskEnabled(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isButtonBackgroundShown(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isC5Model()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c5pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c7pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isC9Device()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c9ltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isC9Model()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c5pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c7pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jadeltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c10p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "veneno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "j3y17q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCJK(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeScript;->HANGUL:Ljava/lang/Character$UnicodeScript;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCJK(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    const-string v4, "PEDIT_Utils"

    invoke-virtual {v0}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isCPUDownloadedPackageExisted(Landroid/content/Context;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.mimage.photoretouching.downloadCPUfilters"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static isCPUEffects(I)Z
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1012

    if-lt p0, v0, :cond_1

    const/16 v0, 0x102a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudFolder(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cloudagent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadableCPUEffects(I)Z
    .locals 1

    const/16 v0, 0x1016

    if-lt p0, v0, :cond_0

    const/16 v0, 0x102a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDreamChina()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dreamqltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dream2qltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dreamqltelduzc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dream2qltelduzc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dreamqltezm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c10ltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jadeltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kellyltectc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDreamUX()Z
    .locals 2

    const-string v0, "dream"

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "great"

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEasyMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableIsVZW()Z
    .locals 2

    const-string v0, "VZW"

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEnableNearby()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableNearbyDMR()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isEnableIsVZW()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableWfd(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.wfd_support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGPUFilterSupported(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPlatformKey(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "com.sec.android.secimaging"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VERSION_FILTER_PROVIDER"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isGraceUX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isGreatUX()Z
    .locals 2

    const-string v0, "great"

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoveringUI(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInPinWindowsMode(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIndianChar(C)Z
    .locals 1

    const/16 v0, 0x900

    if-lt p0, v0, :cond_0

    const/16 v0, 0xdff

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInside([FLandroid/graphics/Rect;FF)Z
    .locals 12

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v4, p0, v2

    const/4 v2, 0x5

    aget v5, p0, v2

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->area(FFFFFF)F

    move-result v6

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v4, p0, v2

    const/4 v2, 0x3

    aget v5, p0, v2

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->area(FFFFFF)F

    move-result v7

    const/4 v0, 0x4

    aget v0, p0, v0

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v2, 0x6

    aget v4, p0, v2

    const/4 v2, 0x7

    aget v5, p0, v2

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->area(FFFFFF)F

    move-result v8

    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, 0x7

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v4, p0, v2

    const/4 v2, 0x3

    aget v5, p0, v2

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->area(FFFFFF)F

    move-result v9

    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->area(FFFFFF)F

    move-result v10

    add-float v0, v6, v7

    add-float/2addr v0, v8

    add-float/2addr v0, v9

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3feffff583a53b8eL    # 0.999995

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    add-float v0, v6, v7

    add-float/2addr v0, v8

    add-float/2addr v0, v9

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3ff000053e2d6239L    # 1.000005

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static isInstalledOneConnect(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.oneconnect"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInstalledQuickConnect(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.qconnect"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isLauncher(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiteVersion()Z
    .locals 2

    const-string v0, "lite"

    const-string v1, "full_sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowResolutionDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x200000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainInstance(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainInstanceService()Z
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMassModel()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "j5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "j7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "j3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gt5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "xcover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotSupportFolder(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RetailMedia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LiveVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cloudagent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverGLTextureSize(I)Z
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageRemoved(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->filters:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->filters:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_4
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not find out package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isPanoramaImage(II)Z
    .locals 6

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_0

    int-to-double v0, p1

    int-to-double v2, p0

    div-double/2addr v0, v2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlatformKey(Landroid/content/Context;)Z
    .locals 9

    const/4 v5, 0x0

    const-string v0, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const/16 v6, 0x40

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPng()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsPng:Z

    return v0
.end method

.method public static isPointOnLineSegment(FFFFFF)Z
    .locals 7

    sub-float v0, p1, p3

    sub-float v1, p1, p3

    mul-float/2addr v0, v1

    sub-float v1, p0, p2

    sub-float v2, p0, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    sub-float v2, p5, p3

    sub-float v3, p5, p3

    mul-float/2addr v2, v3

    sub-float v3, p4, p2

    sub-float v4, p4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-float v4, p1, p5

    sub-float v5, p1, p5

    mul-float/2addr v4, v5

    sub-float v5, p0, p4

    sub-float v6, p0, p4

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreloadedEffects(I)Z
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1002

    if-lt p0, v0, :cond_1

    const/16 v0, 0x102a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRAWImageSupported(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nrw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rw2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "srw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSaveSDCard(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenRatio1610(Landroid/content/Context;)Z
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Utils::isScreenRatio1610 caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v2, v3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v0, v3

    div-float v1, v0, v2

    const v3, 0x3fcccccd    # 1.6f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f200000    # 0.625f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isScreenRatio1610(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getScreenWidth()I

    move-result v3

    int-to-float v0, v3

    div-float v1, v0, v2

    const v3, 0x3fcccccd    # 1.6f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f200000    # 0.625f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSmartCropSupport()Z
    .locals 4

    :try_start_0
    const-string v1, "smart_cropping"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "PEDIT_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadLibrary Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSmoothEnable()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "j5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "grand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "j7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gts2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gt5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStorePermissionGranted(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportAutoEnhance()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_AUTO_ADJUST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGreatUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDownloadEffect()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_DOWNLOAD_EFFECT"

    const-string v4, "TRUE"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportExifInterface(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tiff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".arw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".rw2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".orf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".raf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedGPUEffect(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;I)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->getSupportedEffectFilter(I)Lcom/samsung/android/camera/filter/SemFilter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->getSupportedEffectFilterCount()I

    move-result v3

    if-ge p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isTabS2Device()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gts2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabS3Device()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gts3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletModel()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gts2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gts3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 15

    const/4 v12, 0x0

    const/16 v1, 0x3a

    const-string v0, "com.google.android.marvin.talkback"

    const-string v4, "com.samsung.android.app.talkback"

    const-string v2, "com.samsung.android.app.screenreader"

    const-string v6, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const-string v5, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const-string v3, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enabled_accessibility_services"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    move-object v7, v11

    invoke-virtual {v7, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v13, "com.google.android.marvin.talkback"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_4
    const-string v13, "com.samsung.android.app.talkback"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const-string v13, "com.samsung.android.app.screenreader"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_6
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public static isThemeInstalled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnderNOS()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUtraPowerSavingMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static makeScaleMaskBuff([BII[BII)V
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, p4, p5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_0
    return-void
.end method

.method public static passIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static passIntentMotion(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static pointOnLineSegment(FFFFF)[F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    mul-float v2, p4, p2

    sub-float v3, v4, p4

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, p4, p3

    sub-float v3, v4, p4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static polygonCenterOfMass(Ljava/util/ArrayList;)Landroid/graphics/Point;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v13, v5, 0x1

    rem-int v12, v13, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    mul-float/2addr v13, v14

    float-to-double v14, v13

    add-double/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v14

    float-to-double v14, v13

    sub-double/2addr v2, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v2, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v13, v5, 0x1

    rem-int v12, v13, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v15, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    mul-float/2addr v13, v15

    sub-float v13, v14, v13

    float-to-double v10, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    float-to-double v14, v13

    mul-double/2addr v14, v10

    add-double/2addr v6, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-double v14, v13

    mul-double/2addr v14, v10

    add-double/2addr v8, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    mul-double v16, v16, v2

    div-double v10, v14, v16

    mul-double/2addr v6, v10

    mul-double/2addr v8, v10

    new-instance v13, Landroid/graphics/Point;

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    return-object v13
.end method

.method public static printHeapLog()V
    .locals 1

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    return-void
.end method

.method public static processXMLData(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    :goto_0
    if-eq v1, v7, :cond_2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sticker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    const-string v8, "name"

    invoke-interface {p0, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v8, "is_gif"

    invoke-interface {p0, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-direct {v8, v9, v10, v4, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3
.end method

.method public static processXMLDataForStringRes(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "string-res"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const-string v6, "id"

    invoke-interface {p0, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "~Rakesh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const-string v5, "~Rakesh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v5, "~Rakesh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2
.end method

.method public static readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-object v6

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    throw v6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p0, 0x0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static register(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->sInstance:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    return-void
.end method

.method public static registerMotion(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mMotionInstance:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    return-void
.end method

.method public static releaseSecImaging(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->release()V

    const/4 p0, 0x0

    :cond_0
    return-void
.end method

.method public static resetDataTaken()V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mDateTaken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v5, :cond_0

    if-gtz v2, :cond_2

    :cond_0
    const-string v6, "PEDIT_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid image size..width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v2, v6, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    invoke-static {v5, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p0, v4

    goto :goto_0
.end method

.method public static rotate([BIII)V
    .locals 11

    array-length v9, p0

    invoke-static {p0, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const/4 v9, 0x6

    if-ne p3, v9, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_0

    mul-int v9, v1, p2

    sub-int v10, p2, v0

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v9, v10

    mul-int/lit8 v2, v9, 0x4

    mul-int v9, v0, p1

    add-int/2addr v9, v1

    mul-int/lit8 v3, v9, 0x4

    aget-byte v9, v4, v3

    aput-byte v9, p0, v2

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v9, v2, 0x2

    add-int/lit8 v10, v3, 0x2

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v9, v2, 0x3

    add-int/lit8 v10, v3, 0x3

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    if-ne p3, v9, :cond_3

    mul-int v9, p1, p2

    add-int/lit8 v5, v9, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    const/4 v1, 0x0

    move v8, v7

    move v6, v5

    :goto_3
    if-ge v1, p1, :cond_2

    add-int/lit8 v5, v6, -0x1

    mul-int/lit8 v2, v6, 0x4

    add-int/lit8 v7, v8, 0x1

    mul-int/lit8 v3, v8, 0x4

    aget-byte v9, v4, v3

    aput-byte v9, p0, v2

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v9, v2, 0x2

    add-int/lit8 v10, v3, 0x2

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v9, v2, 0x3

    add-int/lit8 v10, v3, 0x3

    aget-byte v10, v4, v10

    aput-byte v10, p0, v9

    add-int/lit8 v1, v1, 0x1

    move v8, v7

    move v6, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v7, v8

    move v5, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static rotatePoint([F[F[FF)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aget v4, p0, v8

    aget v5, p2, v8

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aget v6, p0, v9

    aget v7, p2, v9

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aget v4, p2, v8

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, p1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aget v4, p0, v8

    aget v5, p2, v8

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget v6, p0, v9

    aget v7, p2, v9

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget v4, p2, v9

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, p1, v9

    return-void
.end method

.method public static rotateRGB([IIII)V
    .locals 18

    move-object/from16 v0, p0

    array-length v4, v0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v4, 0x6

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v5, p1

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x6

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move/from16 v13, p1

    move/from16 v16, p1

    move/from16 v17, p2

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_4
    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move/from16 v13, p2

    move/from16 v16, p2

    move/from16 v17, p1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_1
.end method

.method public static rotationAroundXAxis(FFFFI)D
    .locals 10

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v6, 0x0

    int-to-float v4, p4

    sub-float v3, v4, p3

    int-to-float v4, p4

    sub-float v2, v4, p1

    sub-float v4, v3, v2

    sub-float v5, p2, p0

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    cmpl-float v4, p3, p1

    if-lez v4, :cond_0

    cmpl-double v4, v0, v6

    if-lez v4, :cond_0

    add-double/2addr v0, v8

    :cond_0
    cmpl-float v4, p3, p1

    if-lez v4, :cond_1

    cmpg-double v4, v0, v6

    if-gez v4, :cond_1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v4

    :cond_1
    cmpl-float v4, p1, p3

    if-lez v4, :cond_2

    cmpg-double v4, v0, v6

    if-gez v4, :cond_2

    add-double/2addr v0, v8

    :cond_2
    return-wide v0
.end method

.method public static saveScalePreviewBitmap(Ljava/lang/String;Ljava/lang/String;[IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 25

    const/16 v22, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    const/16 v22, 0x5a

    :cond_0
    :goto_0
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v22

    neg-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v10, 0x0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPng()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    move/from16 v0, p5

    int-to-float v5, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v24, v5, v6

    move/from16 v0, p6

    int-to-float v5, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v21, v5, v6

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :try_start_0
    new-instance v20, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const/16 v22, 0xb4

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/16 v22, 0x10e

    goto/16 :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :catch_0
    move-exception v19

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Landroid/graphics/Bitmap;II)Ljava/lang/String;
    .locals 22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getSimpleDate()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isFromPersonalPage()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isPng()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v16, Ljava/io/File;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "make directory!!, fail"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPersonalPagePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/storage/Private"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "DCIM/Photo editor"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    new-instance v21, Ljava/io/File;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v14, v2, :cond_5

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->copyExif(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    move-result-object v20

    :cond_4
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v2, "failed to give write permission..."

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_5
    const/16 v18, 0x0

    if-eqz v20, :cond_8

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v17

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v19

    :goto_3
    if-eqz v17, :cond_9

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_4
    if-eqz v18, :cond_7

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateMediaDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_8
    :try_start_5
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v2, 0x64

    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v12, v13

    goto :goto_3

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_9
    if-eqz v12, :cond_6

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v10

    :goto_6
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v17, :cond_b

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_a
    :goto_7
    if-eqz v18, :cond_7

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    :catch_5
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_a

    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_7

    :catch_7
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v17, :cond_e

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_c
    :goto_9
    if-eqz v18, :cond_d

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_d
    :goto_a
    throw v2

    :catch_8
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_e
    if-eqz v12, :cond_c

    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_9

    :catch_9
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_a
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v12, v13

    goto :goto_8

    :catch_b
    move-exception v10

    move-object/from16 v18, v19

    goto :goto_6

    :catch_c
    move-exception v10

    move-object v12, v13

    goto :goto_6
.end method

.method public static setHovering(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    :cond_0
    return-void
.end method

.method public static setLabelStyleNum(I)V
    .locals 0

    sput p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mLabelStyleNum:I

    return-void
.end method

.method public static setPng(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mIsPng:Z

    return-void
.end method

.method private static setRenderScriptCacheDir(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v3, "android.renderscript.RenderScriptCacheDir"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setupDiskCache"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/File;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setStrokeForText(Landroid/widget/TextView;IF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    return-void
.end method

.method public static setmDNIeUIMode(Landroid/content/Context;I)V
    .locals 2

    const-string v1, "mDNIe"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static toUppercaseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V
    .locals 3

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateFrameLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateGPUEffectNames(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->mGPUEffectNames:Ljava/util/ArrayList;

    return-void
.end method

.method public static updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V
    .locals 3

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateMediaDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    :cond_0
    const/4 v5, 0x0

    const/16 v0, 0x2f

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x2e

    invoke-virtual {p4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDateTaken()J

    move-result-wide v2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v10

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V
    .locals 3

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateRelativeLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    if-lez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    if-lez p5, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_3
    if-lez p7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    if-lez p6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public static updateVertices([FLandroid/graphics/RectF;FFFF)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    float-to-double v4, p3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v2, v4, v6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float v5, v5, p4

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float v5, v5, p5

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float v5, v5, p4

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float v5, v5, p5

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float v5, v5, p4

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float v5, v5, p5

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float v5, v5, p4

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float v5, v5, p5

    float-to-double v6, v5

    float-to-double v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v4

    return-void
.end method

.method public static updateViewGroupParams(Landroid/content/Context;III)V
    .locals 3

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
