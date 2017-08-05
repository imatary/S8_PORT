.class final Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field private isJpegCallbackCompleted:Z

.field private isRawCallbackCompleted:Z

.field private mJpegData:[B

.field private mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

.field private mRawFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method

.method private getRawPictureSize(I)Landroid/util/Size;
    .locals 12

    const/4 v8, 0x2

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatio(I)D

    move-result-wide v0

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v8

    const-string v9, "dng-picture-size-values"

    invoke-virtual {v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v3, v8

    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    const/4 v8, 0x0

    aget v8, v2, v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    aget v8, v2, v8

    if-nez v8, :cond_2

    :cond_1
    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    :goto_1
    const/4 v8, 0x0

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    aput v9, v2, v8

    :cond_2
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RawPictureCallback.getRawPictureSize rawPictureSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    return-object v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 11

    const-string v5, "CommonEngine"

    const-string v6, "insertToDBForRawImage"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->getRawPictureSize(I)Landroid/util/Size;

    move-result-object v2

    const-string v5, "title"

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v6, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6800(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_display_name"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "mime_type"

    const-string v6, "image/x-adobe-dng"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "height"

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "width"

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "addr"

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v5, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_0
    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string v5, "DB Insert"

    invoke-static {v5}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DB Insert**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DB Insert**EndU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v5, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    const v6, 0x7f0901c9

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "CommonEngine"

    const-string v6, "ContentResolver insert failed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/engine/ImageStoringInfo;)V
    .locals 7

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.storeRawImage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dng"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7000(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->getDateTaken()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3800(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public handleJpegPictureTaken([BLcom/sec/android/app/camera/engine/ImageStoringInfo;)V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "RawPictureCallback.handleJpegPictureTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    if-eqz v0, :cond_1

    const-string v0, "CommonEngine"

    const-string v1, "Both JPEG and RAW callback state are completed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/engine/ImageStoringInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    goto :goto_0
.end method

.method public initialize()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->addRawImageCallbackBuffer([B)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6300(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v1

    const-string v2, "capture-raw-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isRawPictureCallbackCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    return v0
.end method

.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getState()Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6400(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CommonEngine"

    const-string v2, "Returned because RawPictureFormat is not enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    if-eqz v1, :cond_7

    const-string v1, "CommonEngine"

    const-string v2, "Both JPEG and RAW callback state are completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/engine/ImageStoringInfo;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6500(Lcom/sec/android/app/camera/engine/CommonEngine;[BLcom/sec/android/app/camera/engine/ImageStoringInfo;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iput-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/engine/ImageStoringInfo;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureCompleted()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6608(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-le v1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6602(Lcom/sec/android/app/camera/engine/CommonEngine;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken - JPEG callback state is not completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    goto/16 :goto_0
.end method
