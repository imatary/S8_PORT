.class public Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;
.super Ljava/lang/Object;
.source "HideFileScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;
    }
.end annotation


# static fields
.field public static final SHARE_FOLDER:Ljava/lang/String; = "/.face/.shareEvent"

.field public static final SHARE_ORIGINAL_DOWNLOAD:Ljava/lang/String; = "Download"

.field private static final TAG:Ljava/lang/String; = "HideFileScanner"

.field public static final THUMB_SIZE:I = 0x2f8

.field private static mInstance:Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

.field private static final sMimeTypeMap:Ljava/util/HashMap;
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


# instance fields
.field private final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->setMimeType()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->mInstance:Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->mInstance:Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->mInstance:Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setMimeType()V
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JPG"

    const-string/jumbo v2, "image/jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JPEG"

    const-string/jumbo v2, "image/jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JPG"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JPEG"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BMP"

    const-string/jumbo v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GIF"

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PNG"

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BMP"

    const-string/jumbo v2, "image/x-ms-bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WBMP"

    const-string/jumbo v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WEBP"

    const-string/jumbo v2, "image/webp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GOLF"

    const-string/jumbo v2, "image/golf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MPEG"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MPG"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MP4"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "M4V"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3GP"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3GPP"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3G2"

    const-string/jumbo v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3GPP2"

    const-string/jumbo v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MKV"

    const-string/jumbo v2, "video/x-matroska"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WEBM"

    const-string/jumbo v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "video/mp2ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AVI"

    const-string/jumbo v2, "video/avi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "RAM"

    const-string/jumbo v2, "video/rmf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "RM"

    const-string/jumbo v2, "video/rmf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "RMVB"

    const-string/jumbo v2, "video/rmf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WMV"

    const-string/jumbo v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ASF"

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setShareInfo(Ljava/lang/String;Ljava/lang/String;II)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;
    .locals 8

    new-instance v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;-><init>()V

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v5, 0x2

    new-array v3, v5, [F

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface;->getLatLong([F)Z

    const/4 v5, 0x0

    aget v5, v3, v5

    float-to-double v6, v5

    iput-wide v6, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLatitude:D

    const/4 v5, 0x1

    aget v5, v3, v5

    float-to-double v6, v5

    iput-wide v6, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLongitude:D

    const-string/jumbo v5, "ImageWidth"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mWidth:I

    const-string/jumbo v5, "ImageLength"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getDateTime(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput p4, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalfileSize:I

    iput p3, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x5a

    :try_start_1
    iput v5, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "HideFileScanner"

    const-string/jumbo v6, "setShareInfo: IOException!"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const/16 v5, 0xb4

    :try_start_2
    iput v5, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x10e

    iput v5, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDateTime(Ljava/lang/String;)J
    .locals 14

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "DateTime"

    invoke-virtual {v4, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "SubSecTime"

    invoke-virtual {v4, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-nez v0, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    :cond_0
    :goto_1
    return-wide v6

    :catch_0
    move-exception v2

    const-string/jumbo v12, "HideFileScanner"

    const-string/jumbo v13, "getDateTime: IOException!"

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_1
    iget-object v12, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v6

    if-eqz v9, :cond_0

    :try_start_2
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_2
    const-wide/16 v12, 0x3e8

    cmp-long v12, v10, v12

    if-lez v12, :cond_4

    const-wide/16 v12, 0xa

    div-long/2addr v10, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_4
    add-long/2addr v6, v10

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v12, "HideFileScanner"

    const-string/jumbo v13, "getDateTime: NumberFormatException!"

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v12, "HideFileScanner"

    const-string/jumbo v13, "getDateTime: IllegalArgumentException!"

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->sMimeTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getShareEventItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JII)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;
    .locals 11

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {p0, p4, v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->setShareInfo(Ljava/lang/String;Ljava/lang/String;II)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    move-result-object v7

    move-wide/from16 v0, p7

    iput-wide v0, v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J

    const/4 v6, -0x1

    new-instance v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    move/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method
