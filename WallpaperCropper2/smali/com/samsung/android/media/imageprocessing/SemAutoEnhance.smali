.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;
    }
.end annotation


# static fields
.field private static final AUTOENHANCE_LITE_VERSION:Ljava/lang/String; = "5.1.0"

.field private static final AUTOENHANCE_VERSION:Ljava/lang/String; = "5.0.0"

.field private static final TAG:Ljava/lang/String; = "SemAutoEnhance"

.field private static final TEMP_FILE_PATH:Ljava/lang/String;

.field public static final VERSION_2:I = 0x0

.field public static final VERSION_3:I = 0x1

.field private static cpuBooster:Landroid/os/DVFSHelper; = null

.field private static cpuNumBooster:Landroid/os/DVFSHelper; = null

.field private static final maxFaceNum:I = 0xa

.field private static tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ae_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    sput-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    sput-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BeautyFaceDecision(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;II)Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-double v0, v0

    mul-int v2, p1, p2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static Is_OrgFile_deleted(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Unable to delete original file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v2
.end method

.method private static MediaDBUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;JJLjava/lang/String;)V
    .locals 7

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "datetaken"

    iget-wide v4, p2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;->dateTaken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_modified"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "orientation"

    iget-wide v4, p2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;->orientation:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "_size"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "REAR_CAM_SELFIE"

    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "FRONT_CAM_SELFIE"

    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "AUTO_ENHANCE"

    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "sef_file_type"

    const/16 v4, 0x900

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "sef_file_type"

    const/16 v4, 0x910

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "sef_file_type"

    const/16 v4, 0x8c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static SkipBeautyFace(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static changeCover(Ljava/io/File;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->CheckLibraryVersion()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "SemAutoEnhance Version : 5.1.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "changeCover S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v4, 0xa01

    :try_start_0
    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    :goto_2
    const/16 v3, 0x900

    :try_start_1
    invoke-static {p0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_3
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x910

    :try_start_2
    invoke-static {p0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :goto_4
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const-string/jumbo v8, "AUTO_ENHANCE"

    :goto_5
    const-string/jumbo v2, "SemAutoEnhance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SefSelfieInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "REAR_CAM_SELFIE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "FRONT_CAM_SELFIE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    :cond_0
    const-string/jumbo v0, "SemAutoEnhance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "SemAutoEnhance Version : 5.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Image_UTC_Data"

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    const-string/jumbo v8, "REAR_CAM_SELFIE"

    const-string/jumbo v1, "Rear_Cam_Selfie_Info"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_5

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_4
    const-string/jumbo v8, "FRONT_CAM_SELFIE"

    const-string/jumbo v1, "Front_Cam_Selfie_Info"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    const-string/jumbo v0, "SemAutoEnhance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string/jumbo v3, "Auto_Enhance_Info"

    invoke-static {p0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v6

    new-instance v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;

    invoke-direct {v3, v2, p1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const/4 v4, 0x0

    aget-byte v4, v6, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    :cond_8
    const/4 v4, 0x0

    aget-byte v4, v6, v4

    if-eqz v4, :cond_11

    :cond_9
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Wrong image SEF INFO data. Check the SEF INFO."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v4, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "Auto_Enhance_Unprocessed"

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_c

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v7, :cond_d

    :goto_6
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v5, "Rear_Cam_Selfie_Info"

    const/16 v7, 0x900

    const/4 v9, 0x1

    invoke-static {v4, v5, v1, v7, v9}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-byte v4, v6, v1

    const/4 v1, 0x1

    const/4 v4, 0x1

    aput-byte v4, v6, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v5, 0x901

    const/4 v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Processed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-nez v0, :cond_10

    :cond_b
    :goto_7
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->renameOP(Ljava/lang/String;Ljava/io/File;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->MediaDBUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;JJLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "changeCover E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_c
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v5

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v4

    if-nez v7, :cond_e

    :goto_8
    :try_start_8
    throw v4

    :cond_e
    if-nez v5, :cond_f

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :cond_f
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    :catch_5
    move-exception v7

    :try_start_a
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_8

    :cond_10
    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto :goto_7

    :cond_11
    const/4 v4, 0x1

    aget-byte v4, v6, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const-string/jumbo v4, "Auto_Enhance_Processed"

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_12

    :try_start_b
    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_6

    const/4 v5, 0x0

    :try_start_c
    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v7, :cond_13

    :goto_9
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v5, "Rear_Cam_Selfie_Info"

    const/16 v7, 0x900

    const/4 v9, 0x1

    invoke-static {v4, v5, v1, v7, v9}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-byte v4, v6, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v6, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v5, 0x901

    const/4 v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Unprocessed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-eqz v0, :cond_b

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_7

    :cond_12
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_13
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_9

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9

    :catch_7
    move-exception v5

    :try_start_e
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v4

    if-nez v7, :cond_14

    :goto_a
    :try_start_f
    throw v4

    :cond_14
    if-nez v5, :cond_15

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_a

    :cond_15
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_a

    :catch_8
    move-exception v7

    :try_start_11
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_a

    :catchall_2
    move-exception v0

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    :cond_17
    const-string/jumbo v0, "SemAutoEnhance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    const-string/jumbo v3, "Auto_Enhance_Info"

    invoke-static {p0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v6

    new-instance v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;

    invoke-direct {v3, v2, p1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const/4 v4, 0x0

    aget-byte v4, v6, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    :cond_19
    const/4 v4, 0x0

    aget-byte v4, v6, v4

    if-eqz v4, :cond_22

    :cond_1a
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Wrong image SEF INFO data. Check the SEF INFO."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v4, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_19

    const-string/jumbo v4, "Auto_Enhance_Unprocessed"

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_1d

    :try_start_12
    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_9

    const/4 v5, 0x0

    :try_start_13
    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-nez v7, :cond_1e

    :goto_b
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v5, "Front_Cam_Selfie_Info"

    const/16 v7, 0x910

    const/4 v9, 0x1

    invoke-static {v4, v5, v1, v7, v9}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-byte v4, v6, v1

    const/4 v1, 0x1

    const/4 v4, 0x1

    aput-byte v4, v6, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v5, 0x911

    const/4 v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Processed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-nez v0, :cond_21

    :cond_1c
    :goto_c
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_14
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->renameOP(Ljava/lang/String;Ljava/io/File;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->MediaDBUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;JJLjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "changeCover E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1d
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1e
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_b

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b

    :catch_a
    move-exception v5

    :try_start_16
    throw v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catchall_3
    move-exception v4

    if-nez v7, :cond_1f

    :goto_d
    :try_start_17
    throw v4

    :cond_1f
    if-nez v5, :cond_20

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_d

    :cond_20
    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_d

    :catch_b
    move-exception v7

    :try_start_19
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_9

    goto :goto_d

    :cond_21
    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto :goto_c

    :cond_22
    const/4 v4, 0x1

    aget-byte v4, v6, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const-string/jumbo v4, "Auto_Enhance_Processed"

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_23

    :try_start_1a
    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_c

    const/4 v5, 0x0

    :try_start_1b
    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-nez v7, :cond_24

    :goto_e
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v5, "Front_Cam_Selfie_Info"

    const/16 v7, 0x910

    const/4 v9, 0x1

    invoke-static {v4, v5, v1, v7, v9}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-byte v4, v6, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v6, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v5, 0x911

    const/4 v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Unprocessed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_c

    :cond_23
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_24
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_c

    goto :goto_e

    :catch_c
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_e

    :catch_d
    move-exception v5

    :try_start_1d
    throw v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :catchall_4
    move-exception v4

    if-nez v7, :cond_25

    :goto_f
    :try_start_1e
    throw v4

    :cond_25
    if-nez v5, :cond_26

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_c

    goto :goto_f

    :cond_26
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_c

    goto :goto_f

    :catch_e
    move-exception v7

    :try_start_20
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_c

    goto :goto_f

    :catchall_5
    move-exception v0

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "Auto_Enhance_Info"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v5

    new-instance v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;

    invoke-direct {v3, v2, p1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const/4 v1, 0x0

    aget-byte v1, v5, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2a

    :cond_28
    const/4 v1, 0x0

    aget-byte v1, v5, v1

    if-eqz v1, :cond_31

    :cond_29
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Wrong image SEF INFO data. Check the SEF INFO."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v1, 0x1

    aget-byte v1, v5, v1

    if-nez v1, :cond_28

    const-string/jumbo v1, "Auto_Enhance_Unprocessed"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2c

    :try_start_21
    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_f

    const/4 v4, 0x0

    :try_start_22
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    if-nez v6, :cond_2d

    :goto_10
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-byte v4, v5, v1

    const/4 v1, 0x1

    const/4 v4, 0x1

    aput-byte v4, v5, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v6, 0x8c0

    const/4 v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Processed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-nez v0, :cond_30

    :cond_2b
    :goto_11
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_23
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->renameOP(Ljava/lang/String;Ljava/io/File;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->MediaDBUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;JJLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "changeCover E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2c
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2d
    :try_start_24
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_f

    goto :goto_10

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_10

    :catch_10
    move-exception v4

    :try_start_25
    throw v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :catchall_6
    move-exception v1

    if-nez v6, :cond_2e

    :goto_12
    :try_start_26
    throw v1

    :cond_2e
    if-nez v4, :cond_2f

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_f

    goto :goto_12

    :cond_2f
    :try_start_27
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_f

    goto :goto_12

    :catch_11
    move-exception v6

    :try_start_28
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_f

    goto :goto_12

    :cond_30
    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto :goto_11

    :cond_31
    const/4 v1, 0x1

    aget-byte v1, v5, v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_29

    const-string/jumbo v1, "Auto_Enhance_Processed"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_32

    :try_start_29
    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_12

    const/4 v4, 0x0

    :try_start_2a
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_13
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    if-nez v6, :cond_33

    :goto_13
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllData(Ljava/io/File;)Z

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-byte v4, v5, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v5, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Info"

    const/16 v6, 0x8c0

    const/4 v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Auto_Enhance_Unprocessed"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, p0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-eqz v0, :cond_2b

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    const-string/jumbo v4, "Image_UTC_Data"

    const/16 v5, 0xa01

    const/4 v6, 0x1

    invoke-static {v1, v4, v0, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_11

    :cond_32
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Null returned from getData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_33
    :try_start_2b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_12

    goto :goto_13

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_13

    :catch_13
    move-exception v4

    :try_start_2c
    throw v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :catchall_7
    move-exception v1

    if-nez v6, :cond_34

    :goto_14
    :try_start_2d
    throw v1

    :cond_34
    if-nez v4, :cond_35

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_12

    goto :goto_14

    :cond_35
    :try_start_2e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_12

    goto :goto_14

    :catch_14
    move-exception v6

    :try_start_2f
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_12

    goto :goto_14

    :catchall_8
    move-exception v0

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static correct_coord(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;III)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    sub-int v0, p3, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    sub-int v1, p3, v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    sub-int v0, p3, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    iget v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    goto :goto_0
.end method

.method private static doBoost(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->doBoost(Landroid/content/Context;I)V

    return-void
.end method

.method private static doBoost(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SemAutoEnhance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportedCpuCoreNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v2, "CORE_NUM"

    aget v0, v0, v6

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SemAutoEnhance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportedCPUFreqTable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v2, "CPU"

    aget v0, v0, v6

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_1
.end method

.method private static doBoostRelease(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method

.method public static enhanceImage(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/content/Context;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->doBoost(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->CheckLibraryVersion()I

    move-result v0

    const-string/jumbo v1, "SemAutoEnhance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemAutoEnhance Lib Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    invoke-static {p0, p1, p2, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->enhanceImageLite(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-static {p2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->doBoostRelease(Landroid/content/Context;)V

    return v0

    :cond_0
    invoke-static {p0, p1, p2, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->enhanceImageFull(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private static enhanceImageFull(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/content/Context;I)I
    .locals 43

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Version : 5.0.0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object/from16 v37, v4

    :goto_0
    if-nez v37, :cond_1

    :cond_0
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v37, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x900

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :goto_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x910

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_2
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    move-object/from16 v34, v4

    :goto_3
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SefSelfieInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    const/16 v22, 0x0

    const/16 v27, 0x0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getImageDimension(Ljava/lang/String;)[I

    move-result-object v38

    const/4 v4, 0x0

    aget v4, v38, v4

    if-gtz v4, :cond_5

    :cond_2
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "getImageDimension failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    return v4

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "REAR_CAM_SELFIE"

    :goto_4
    move-object/from16 v34, v4

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "FRONT_CAM_SELFIE"

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    aget v4, v38, v4

    if-lez v4, :cond_2

    new-instance v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v39, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v20, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;-><init>()V

    new-instance v40, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;

    invoke-direct/range {v40 .. v40}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;-><init>()V

    const/4 v4, 0x0

    aget v8, v38, v4

    const/4 v4, 0x1

    aget v9, v38, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_data=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v4, 0xa

    new-array v6, v4, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    const/16 v4, 0xa

    new-array v12, v4, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;

    const/4 v4, 0x0

    :goto_5
    const/16 v7, 0xa

    if-lt v4, v7, :cond_7

    const/16 v4, 0xa

    new-array v7, v4, [I

    const/16 v36, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->Start()J

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->serviceflag:I

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->fieldmediaid:I

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->getInclineDCM:I

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->cursorExist:Z

    const/4 v4, 0x0

    :try_start_3
    aget v4, v38, v4

    const/4 v10, 0x1

    aget v10, v38, v10

    mul-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0x4

    new-array v10, v4, [B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x0

    :try_start_4
    aget v4, v38, v4

    const/4 v14, 0x1

    aget v14, v38, v14

    mul-int/2addr v4, v14

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v41, v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v14, "APP - [1]. Decoder + DCM/CMH + FD S "

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;

    const/4 v4, 0x0

    aget v4, v38, v4

    const/4 v14, 0x1

    aget v14, v38, v14

    move-object/from16 v0, v37

    invoke-direct {v15, v0, v10, v4, v14}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;-><init>(Ljava/lang/String;[BII)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    if-nez p1, :cond_a

    :cond_6
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "resizedBmp is recycled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_7
    new-instance v7, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v7, v10, v11, v14, v15}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;-><init>(IIII)V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_3
    move-exception v4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance inputbuffer allocation failed - OOM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_6
    const/4 v4, 0x3

    return v4

    :cond_8
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catch_4
    move-exception v4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance outputBuffer allocation failed - OOM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_7
    const/4 v4, 0x3

    return v4

    :cond_9
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setresizedBmp(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getCategoryInformationFromCMH(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "SemAutoEnhance"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "CMH Category : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_e

    move/from16 v35, v11

    :goto_8
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getImageScreenerValuesFromCMH(Landroid/content/Context;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Ljava/lang/String;)V

    :try_start_5
    move-object/from16 v0, v20

    iget v11, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->getInclineDCM:I

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v4, v0, v11, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getImageScreenerValues(Landroid/graphics/Bitmap;Ljava/lang/String;ILcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    move-object/from16 v0, v20

    iget-boolean v11, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->cursorExist:Z

    if-nez v11, :cond_10

    :cond_b
    const-string/jumbo v11, "SemAutoEnhance"

    const-string/jumbo v13, "APP - GET SAIV FD S "

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getFaceInformation(Landroid/graphics/Bitmap;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[III)I

    move-result v14

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - GET SAIV FD E "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-gtz v14, :cond_11

    :goto_b
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "faceNum : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v4, v15, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    if-eqz v4, :cond_12

    iget-boolean v4, v15, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - [1]. Decoder + DCM/CMH + FD E "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - [2]. Encoder + EYE + BEAUTY + APPLY + TILT Apply S "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v42, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v0, v42

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iget-object v4, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->flashInfo:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getFlashInfo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_13

    :cond_d
    const/16 v25, 0x0

    :goto_c
    new-instance v23, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    const/4 v4, 0x0

    aget-object v4, v6, v4

    iget v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    const/4 v7, 0x0

    aget-object v7, v6, v7

    iget v7, v7, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget v8, v8, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v7, v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;-><init>(IIII)V

    new-instance v15, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->ContrastStrength:F

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->UnderExposureStrength:F

    move/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OverExposureStrength:F

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BlurStrength:F

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OutFocusBgStrength:F

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v26, p3

    invoke-direct/range {v15 .. v27}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;-><init>(FFFFFFILcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;IIII)V

    new-instance v25, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;

    const/4 v4, 0x0

    aget v27, v38, v4

    const/4 v4, 0x1

    aget v28, v38, v4

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x4

    iget v0, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move/from16 v32, v0

    move-object/from16 v26, v10

    invoke-direct/range {v25 .. v32}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;-><init>([BIIIIII)V

    new-instance v26, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;

    const/4 v4, 0x0

    aget v28, v38, v4

    const/4 v4, 0x1

    aget v29, v38, v4

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x5

    iget v0, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move/from16 v33, v0

    move-object/from16 v27, v41

    invoke-direct/range {v26 .. v33}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;-><init>([BIIIIII)V

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceInit(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;)J

    move-result-wide v16

    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-nez v4, :cond_15

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_14

    :goto_d
    const/4 v4, 0x1

    return v4

    :cond_e
    const-string/jumbo v11, "Documents"

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string/jumbo v16, "Scenery"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_f

    move/from16 v35, v11

    goto/16 :goto_8

    :cond_f
    const/16 v27, 0x1

    move/from16 v35, v11

    goto/16 :goto_8

    :catch_5
    move-exception v11

    const-string/jumbo v13, "SemAutoEnhance"

    const-string/jumbo v14, "getImageScreenerValues throws IOException"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, v20

    iget v11, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->serviceflag:I

    shr-int/lit8 v11, v11, 0x9

    and-int/lit8 v11, v11, 0x1

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v11, "APP - GET CMH FD S "

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "media_id="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v11, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->fieldmediaid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getFaceInformationFromCMH(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[I)I

    move-result v14

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - GET CMH FD E "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_11
    const/16 v22, 0x1

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "JpegDecoding fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const/4 v4, 0x1

    return v4

    :cond_13
    if-eqz v14, :cond_d

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_d

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "getEyeInformation S "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v13, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move-object v11, v6

    move v15, v8

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getEyeInformation([B[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;IIII)V

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "getEyeInformation E "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_14
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_d

    :cond_15
    if-eqz v35, :cond_18

    const/4 v4, 0x1

    move/from16 v0, v35

    if-eq v0, v4, :cond_1e

    move/from16 v8, v36

    :goto_e
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SemAutoEnhanceDecision : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->SkipBeautyFace(I)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x1

    if-ne v8, v4, :cond_21

    :cond_16
    :goto_f
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v6, "APP - AutoEnhanceApply S "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v25

    move-object/from16 v19, v26

    move-object/from16 v20, v12

    move/from16 v21, v14

    move/from16 v22, v24

    move/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceApply(JLcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;III)I

    move-result v4

    const-string/jumbo v6, "SemAutoEnhance"

    const-string/jumbo v7, "APP - AutoEnhanceApply E "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_22

    :cond_17
    move-object/from16 v0, v42

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, v42

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v6, "APP - [2]. Encoder + EYE + BEAUTY + APPLY + TILT Apply E "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceDeInit(J)I

    move-result v4

    if-nez v4, :cond_25

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v6, "APP - [3]. saveSEF Total S "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    sget-object v15, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    move-object/from16 v11, v41

    move-object/from16 v12, v38

    move-object/from16 v13, v37

    move-object/from16 v14, p0

    move-object/from16 v16, v5

    move-object/from16 v17, v39

    move-object/from16 v18, v34

    move-object/from16 v19, p2

    invoke-static/range {v11 .. v19}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->saveSEF([B[ILjava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;Ljava/lang/String;Landroid/content/Context;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    :goto_10
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [3]. saveSEF Total E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Version : END 5.0.0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[TIME] APP - enhanceImage Total : "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->Stop(Ljava/lang/String;)J

    const/4 v4, 0x0

    return v4

    :cond_18
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceDecision(J)I

    move-result v4

    if-nez v4, :cond_1a

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->getAutoEnhanceDecision(J)I

    move-result v8

    const/4 v4, 0x4

    if-ne v8, v4, :cond_1c

    :cond_19
    new-instance v9, Lcom/samsung/android/saiv/vision/Image;

    const/4 v4, 0x0

    aget v4, v38, v4

    const/4 v7, 0x1

    aget v7, v38, v7

    sget-object v11, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420SP:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    invoke-direct {v9, v4, v7, v10, v11}, Lcom/samsung/android/saiv/vision/Image;-><init>(II[BLcom/samsung/android/saiv/vision/Image$ImageBufferFormat;)V

    const/4 v7, 0x0

    :try_start_7
    new-instance v4, Landroid/media/ExifInterface;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_11
    new-instance v7, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;

    invoke-direct {v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;-><init>()V

    invoke-virtual {v7, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setShotParameters(Landroid/media/ExifInterface;)V

    invoke-virtual {v7, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->getNightSceneProbability(Lcom/samsung/android/saiv/vision/Image;)F

    move-result v4

    const-string/jumbo v7, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "APP - NightEnhance NightSceneProbability : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x3f333333    # 0.7f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1d

    const/4 v4, 0x7

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->setAutoEnhanceDecision(JI)V

    const/4 v4, 0x7

    :goto_12
    move v8, v4

    goto/16 :goto_e

    :cond_1a
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Decision Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1b

    :goto_13
    const/4 v4, 0x1

    return v4

    :cond_1b
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_13

    :cond_1c
    const/4 v4, 0x3

    if-eq v8, v4, :cond_19

    goto/16 :goto_e

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v7

    goto :goto_11

    :cond_1d
    move v4, v8

    goto :goto_12

    :cond_1e
    const/4 v4, 0x4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->setAutoEnhanceDecision(JI)V

    const/4 v8, 0x4

    goto/16 :goto_e

    :cond_1f
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v6, "APP - AutoEnhanceApply S "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v25

    move-object/from16 v19, v26

    move-object/from16 v20, v12

    move/from16 v21, v14

    move/from16 v22, v24

    move/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceApply(JLcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;III)I

    move-result v4

    const-string/jumbo v6, "SemAutoEnhance"

    const-string/jumbo v7, "APP - AutoEnhanceApply E "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_17

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Apply Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_20

    :goto_14
    const/4 v4, 0x1

    return v4

    :cond_20
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_14

    :cond_21
    if-nez v34, :cond_16

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_16

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - ARC BeautyFace Apply S "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget v4, v38, v4

    const/4 v7, 0x1

    aget v7, v38, v7

    invoke-static {v10, v6, v4, v7, v14}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->BeautyFace([B[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;III)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v6, "APP - ARC BeautyFace Apply E "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_22
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Apply Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_23

    :goto_15
    const/4 v4, 0x1

    return v4

    :cond_23
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_15

    :cond_24
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "Original Image JpegEncoding fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const/4 v4, 0x1

    return v4

    :cond_25
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "AutoEnhance Apply Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_26

    :goto_16
    const/4 v4, 0x1

    return v4

    :cond_26
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_16

    :cond_27
    const/4 v4, 0x2

    return v4

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10
.end method

.method private static enhanceImageLite(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/content/Context;I)I
    .locals 27

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Version : 5.1.0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object/from16 v18, v4

    :goto_0
    if-nez v18, :cond_1

    :cond_0
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v18, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x900

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :goto_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x910

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_2
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    move-object/from16 v17, v4

    :goto_3
    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SefSelfieInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getImageDimension(Ljava/lang/String;)[I

    move-result-object v19

    const/4 v4, 0x0

    aget v4, v19, v4

    if-gtz v4, :cond_5

    :cond_2
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "getImageDimension failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    return v4

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "REAR_CAM_SELFIE"

    :goto_4
    move-object/from16 v17, v4

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "FRONT_CAM_SELFIE"

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    aget v4, v19, v4

    if-lez v4, :cond_2

    new-instance v20, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v21, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;

    invoke-direct {v13}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;-><init>()V

    new-instance v22, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;-><init>()V

    const/4 v4, 0x0

    aget v14, v19, v4

    const/4 v4, 0x1

    aget v15, v19, v4

    const/16 v4, 0xa

    new-array v0, v4, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0xa

    if-lt v4, v5, :cond_7

    const/16 v4, 0xa

    new-array v0, v4, [I

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->Start()J

    const/4 v4, 0x0

    :try_start_3
    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v24, v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x0

    :try_start_4
    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v25, v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [1]. Decoder + DCM + FD S "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;

    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;-><init>(Ljava/lang/String;[BII)V

    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    if-nez p1, :cond_a

    :cond_6
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "resizedBmp is recycled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_7
    new-instance v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;-><init>(IIII)V

    aput-object v5, v16, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_3
    move-exception v4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance inputbuffer allocation failed - OOM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_6
    const/4 v4, 0x3

    return v4

    :cond_8
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catch_4
    move-exception v4

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance outputBuffer allocation failed - OOM"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_7
    const/4 v4, 0x3

    return v4

    :cond_9
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, v20

    iget v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setresizedBmp(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_5
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v4, v0, v5, v13, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getImageScreenerValues(Landroid/graphics/Bitmap;Ljava/lang/String;ILcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v5, v7, v11

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string/jumbo v5, "SemAutoEnhance"

    const-string/jumbo v6, "APP - GET SAIV FD S "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v20

    move-object/from16 v6, v16

    move-object/from16 v7, v23

    move v8, v14

    move v9, v15

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->getFaceInformation(Landroid/graphics/Bitmap;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[III)I

    move-result v23

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - GET SAIV FD E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v23, :cond_c

    move v11, v12

    :cond_b
    :goto_9
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    const-string/jumbo v4, "SemAutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "faceNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [1]. Decoder + DCM + FD E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [2]. Encoder + APPLY S "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    new-instance v12, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    const/4 v4, 0x0

    aget-object v4, v16, v4

    iget v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    const/4 v5, 0x0

    aget-object v5, v16, v5

    iget v5, v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    const/4 v6, 0x0

    aget-object v6, v16, v6

    iget v6, v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    const/4 v7, 0x0

    aget-object v7, v16, v7

    iget v7, v7, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    invoke-direct {v12, v4, v5, v6, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;-><init>(IIII)V

    new-instance v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;

    iget v5, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->ContrastStrength:F

    iget v6, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->UnderExposureStrength:F

    iget v7, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OverExposureStrength:F

    iget v8, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BlurStrength:F

    iget v9, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OutFocusBgStrength:F

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, p3

    invoke-direct/range {v4 .. v16}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;-><init>(FFFFFFILcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;IIII)V

    new-instance v5, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;

    const/4 v6, 0x0

    aget v7, v19, v6

    const/4 v6, 0x1

    aget v8, v19, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object/from16 v0, v20

    iget v12, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move-object/from16 v6, v24

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;-><init>([BIIIIII)V

    new-instance v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;

    const/4 v7, 0x0

    aget v8, v19, v7

    const/4 v7, 0x1

    aget v9, v19, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    move-object/from16 v0, v20

    iget v13, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move-object/from16 v7, v25

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;-><init>([BIIIIII)V

    invoke-static {v5, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceInit(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_f

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_e

    :goto_a
    const/4 v4, 0x1

    return v4

    :catch_5
    move-exception v5

    const-string/jumbo v6, "SemAutoEnhance"

    const-string/jumbo v7, "getImageScreenerValues throws IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_d
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "JpegDecoding fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const/4 v4, 0x1

    return v4

    :cond_e
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_a

    :cond_f
    invoke-static {v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceDecision(J)I

    move-result v4

    if-nez v4, :cond_11

    invoke-static {v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->getAutoEnhanceDecision(J)I

    move-result v4

    const-string/jumbo v7, "SemAutoEnhance"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SemAutoEnhanceDecision : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v7, "APP - SemAutoEnhanceApply S "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object v10, v5

    move-object v11, v6

    move/from16 v13, v23

    invoke-static/range {v8 .. v15}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceApply(JLcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;III)I

    move-result v4

    if-nez v4, :cond_13

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - SemAutoEnhanceApply E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    if-eqz v4, :cond_15

    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [2]. Encoder + APPLY E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceDeInit(J)I

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [3]. saveSEF Total S "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    sget-object v8, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    move-object/from16 v4, v25

    move-object/from16 v5, v19

    move-object/from16 v6, v18

    move-object/from16 v7, p0

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v17

    move-object/from16 v12, p2

    invoke-static/range {v4 .. v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->saveSEF([B[ILjava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;Ljava/lang/String;Landroid/content/Context;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_18

    :goto_b
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "APP - [3]. saveSEF Total E "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Version : END 5.1.0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[TIME] APP - enhanceImage Total : "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->Stop(Ljava/lang/String;)J

    const/4 v4, 0x0

    return v4

    :cond_11
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "AutoEnhance Decision Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_12

    :goto_c
    const/4 v4, 0x1

    return v4

    :cond_12
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_c

    :cond_13
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Apply Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_14

    :goto_d
    const/4 v4, 0x1

    return v4

    :cond_14
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_d

    :cond_15
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "Original Image JpegEncoding fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    const/4 v4, 0x1

    return v4

    :cond_16
    const-string/jumbo v4, "SemAutoEnhance"

    const-string/jumbo v5, "SemAutoEnhance Apply Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_17

    :goto_e
    const/4 v4, 0x1

    return v4

    :cond_17
    sget-object v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_e

    :cond_18
    const/4 v4, 0x2

    return v4

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b
.end method

.method private static extractFromScreener(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7

    const/4 v2, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v2, v0

    :goto_0
    if-le v2, v1, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return v6

    :cond_3
    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v5, 0x30

    if-ge v4, v5, :cond_6

    :cond_5
    return v6

    :cond_6
    const/16 v5, 0x39

    if-gt v4, v5, :cond_5

    goto :goto_2
.end method

.method private static getCategoryInformationFromCMH(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "scene_names"

    aput-object v0, v2, v1

    const-string/jumbo v6, "Unclassified"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "scene_names"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getEyeInformation([B[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;IIII)V
    .locals 14

    new-instance v1, Lcom/samsung/android/media/face/SemFaceLandmark;

    invoke-direct {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->init()I

    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    move/from16 v0, p3

    if-eq v0, v2, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v2, 0x0

    check-cast v2, [[I

    const/4 v2, 0x0

    check-cast v2, [[I

    const/4 v2, 0x0

    check-cast v2, [[I

    const/4 v2, 0x0

    check-cast v2, [[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [[I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v2, 0xa

    if-lt v3, v2, :cond_3

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;

    const/4 v4, 0x0

    aget-object v4, v7, v4

    const/4 v5, 0x0

    aget-object v5, v8, v5

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-direct {v3, v4, v5, v11, v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;-><init>([I[I[I[I)V

    aput-object v3, p2, v2

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, p4

    if-lt v11, v0, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    return-void

    :cond_0
    const/16 v6, 0xb4

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x5a

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x10e

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/16 v4, 0xa

    if-lt v2, v4, :cond_4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    aget-object v4, v7, v3

    const/4 v5, 0x0

    aput v5, v4, v2

    aget-object v4, v8, v3

    const/4 v5, 0x0

    aput v5, v4, v2

    aget-object v4, v9, v3

    const/4 v5, 0x0

    aput v5, v4, v2

    aget-object v4, v10, v3

    const/4 v5, 0x0

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aget-object v2, p1, v11

    iget v2, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    aget-object v2, p1, v11

    iget v2, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    aget-object v2, p1, v11

    iget v2, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    aget-object v2, p1, v11

    iget v2, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/face/SemFaceLandmark;->findEyes4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v3, :cond_9

    :cond_6
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;

    aget-object v4, v7, v11

    aget-object v5, v8, v11

    aget-object v12, v9, v11

    aget-object v13, v10, v11

    invoke-direct {v2, v4, v5, v12, v13}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;-><init>([I[I[I[I)V

    aput-object v2, p2, v11

    const/4 v2, 0x0

    :goto_4
    const/16 v4, 0x8

    if-lt v2, v4, :cond_8

    const/16 v2, 0x8

    :goto_5
    const/16 v4, 0x10

    if-ge v2, v4, :cond_6

    aget-object v4, p2, v11

    iget-object v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->RPointX:[I

    add-int/lit8 v5, v2, -0x8

    aget-object v12, v3, v2

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v4, v5

    aget-object v4, p2, v11

    iget-object v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->RPointY:[I

    add-int/lit8 v5, v2, -0x8

    aget-object v12, v3, v2

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    aget-object v4, p2, v11

    iget-object v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->LPointX:[I

    aget-object v5, v3, v2

    iget v5, v5, Landroid/graphics/Point;->x:I

    aput v5, v4, v2

    aget-object v4, p2, v11

    iget-object v4, v4, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->LPointY:[I

    aget-object v5, v3, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;

    aget-object v3, v7, v11

    aget-object v4, v8, v11

    aget-object v5, v9, v11

    aget-object v12, v10, v11

    invoke-direct {v2, v3, v4, v5, v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;-><init>([I[I[I[I)V

    aput-object v2, p2, v11

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x8

    if-lt v2, v3, :cond_a

    const/16 v2, 0x8

    :goto_7
    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    aget-object v3, p2, v11

    iget-object v3, v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->RPointX:[I

    add-int/lit8 v4, v2, -0x8

    const/4 v5, 0x0

    aput v5, v3, v4

    aget-object v3, p2, v11

    iget-object v3, v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->RPointY:[I

    add-int/lit8 v4, v2, -0x8

    const/4 v5, 0x0

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    aget-object v3, p2, v11

    iget-object v3, v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->LPointX:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    aget-object v3, p2, v11

    iget-object v3, v3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;->LPointY:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private static getFaceInformation(Landroid/graphics/Bitmap;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[III)I
    .locals 16

    new-instance v10, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v10}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v2, "SemAutoEnhance"

    const-string/jumbo v3, "resizedBmp is recycled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v2, v5, v9

    mul-int/lit8 v2, v2, 0x4

    new-array v12, v2, [B

    mul-int v2, v5, v9

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v3, v12, v5, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageCSCByte([I[BII)I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v10, v12, v5, v9, v11}, Lcom/samsung/android/media/face/SemFaceDetection;->run([BIILjava/util/ArrayList;)I

    move-result v2

    const/16 v4, 0xa

    if-gt v2, v4, :cond_3

    move v4, v2

    :goto_1
    const/4 v2, 0x0

    move v8, v2

    :goto_2
    if-lt v8, v4, :cond_4

    invoke-static {v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeByteRelease([B)I

    invoke-static {v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->nativeIntRelease([I)I

    invoke-virtual {v10}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    return v4

    :cond_2
    const-string/jumbo v2, "SemAutoEnhance"

    const-string/jumbo v4, "BMP to YUV ImageCSC Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    move v4, v2

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    aget-object v6, p2, v8

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    aget-object v6, p2, v8

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iput v7, v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    aget-object v6, p2, v8

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    aget-object v6, p2, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v2

    aput v2, p3, v8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    const/4 v6, 0x6

    if-ne v2, v6, :cond_7

    :cond_5
    move/from16 v0, p4

    int-to-double v6, v0

    int-to-double v14, v9

    div-double/2addr v6, v14

    :goto_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v6, v14

    if-lez v2, :cond_6

    aget-object v2, p2, v8

    aget-object v13, p2, v8

    iget v13, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    int-to-double v14, v13

    mul-double/2addr v14, v6

    double-to-int v13, v14

    iput v13, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    aget-object v2, p2, v8

    aget-object v13, p2, v8

    iget v13, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    int-to-double v14, v13

    mul-double/2addr v14, v6

    double-to-int v13, v14

    iput v13, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    aget-object v2, p2, v8

    aget-object v13, p2, v8

    iget v13, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    int-to-double v14, v13

    mul-double/2addr v14, v6

    double-to-int v13, v14

    iput v13, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    aget-object v2, p2, v8

    aget-object v13, p2, v8

    iget v13, v13, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    int-to-double v14, v13

    mul-double/2addr v6, v14

    double-to-int v6, v6

    iput v6, v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    if-nez v2, :cond_8

    :goto_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_5

    move/from16 v0, p4

    int-to-double v6, v0

    int-to-double v14, v5

    div-double/2addr v6, v14

    goto :goto_3

    :cond_8
    aget-object v2, p2, v8

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v6, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->correct_coord(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;III)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    move-result-object v2

    aput-object v2, p2, v8

    goto :goto_4
.end method

.method private static getFaceInformationFromCMH(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;[I)I
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string/jumbo v1, "image_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "media_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "pos_left"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "pos_top"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "pos_right"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "pos_bottom"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "face_pose"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    goto :goto_0

    :goto_1
    const-string/jumbo v2, "pos_left"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "pos_right"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "pos_top"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v5, "pos_bottom"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "face_pose"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    invoke-direct {v7, v2, v4, v3, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;-><init>(IIII)V

    aput-object v7, p2, v0

    aput v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private static getFlashInfo(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getImageDimension(Ljava/lang/String;)[I
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v1, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, v1, v4

    return-object v1
.end method

.method private static getImageScreenerValues(Landroid/graphics/Bitmap;Ljava/lang/String;ILcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2800

    new-array v0, v0, [B

    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const-string/jumbo v3, "SemAutoEnhance"

    const-string/jumbo v4, "getImageScreenerValues S"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "imageScreener/Low&NotLow.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-ltz v2, :cond_6

    :goto_0
    if-nez v1, :cond_7

    :goto_1
    if-nez v0, :cond_9

    :goto_2
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "getImageScreenerValues E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v3, "SemAutoEnhance"

    const-string/jumbo v4, "getImageScreenerValues only Skyline S"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo v3, "imageScreener/AutoAdjust_Incline.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    :goto_4
    if-nez v1, :cond_2

    :goto_5
    if-nez v0, :cond_4

    :goto_6
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "getImageScreenerValues only Skyline E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :try_start_2
    const-string/jumbo v2, "SemAutoEnhance"

    const-string/jumbo v3, "parameterBuffer1 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    :goto_7
    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :cond_4
    new-instance v1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->getQualityFactorScores([BIII)Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "DCMValues are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    iget v0, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->skylineIncline:F

    iput v0, p3, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->SkyLineIncline:F

    goto :goto_6

    :cond_6
    :try_start_3
    const-string/jumbo v2, "SemAutoEnhance"

    const-string/jumbo v3, "parameterBuffer1 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-nez v1, :cond_8

    :goto_8
    throw v0

    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->getQualityFactorScores([BIII)Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "DCMValues are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    invoke-static {p3, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setDCMValues(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V

    goto/16 :goto_2
.end method

.method private static getImageScreenerValuesFromCMH(Landroid/content/Context;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v0, "serviceflag"

    aput-object v0, v2, v6

    const-string/jumbo v0, "media_id"

    aput-object v0, v2, v8

    const-string/jumbo v0, "image_screener"

    aput-object v0, v2, v9

    const/16 v0, 0xb

    new-array v7, v0, [Ljava/lang/String;

    const-string/jumbo v0, "blur"

    aput-object v0, v7, v6

    const-string/jumbo v0, "brightnessMean"

    aput-object v0, v7, v8

    const-string/jumbo v0, "contrast"

    aput-object v0, v7, v9

    const-string/jumbo v0, "featureNumber"

    aput-object v0, v7, v10

    const/4 v0, 0x4

    const-string/jumbo v1, "featurePointDistribution"

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "motionBlur"

    aput-object v1, v7, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "outFocusBackground"

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "overExposure"

    aput-object v1, v7, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "skylineIncline"

    aput-object v1, v7, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "underExposure"

    aput-object v1, v7, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "totalQuality"

    aput-object v1, v7, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v8, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->cursorExist:Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v4, :cond_0

    const-string/jumbo v0, "null"

    if-eq v4, v0, :cond_0

    const/16 v0, 0xb

    new-array v1, v0, [F

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v2, "APP - GET CMH Parameters S "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_2
    array-length v2, v7

    if-lt v0, v2, :cond_3

    aget v0, v1, v6

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BlurStrength:F

    aget v0, v1, v8

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BrightnessMean:F

    aget v0, v1, v9

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->ContrastStrength:F

    aget v0, v1, v10

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->FeatureNumber:F

    const/4 v0, 0x4

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->FeaturePointDistribution:F

    const/4 v0, 0x5

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->MotionBlur:F

    const/4 v0, 0x6

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OutFocusBgStrength:F

    const/4 v0, 0x7

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OverExposureStrength:F

    const/16 v0, 0x8

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->SkyLineIncline:F

    const/16 v0, 0x9

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->UnderExposureStrength:F

    const/16 v0, 0xa

    aget v0, v1, v0

    iput v0, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->TotalQuality:F

    iput v8, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->getInclineDCM:I

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - GET CMH Parameters E "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "serviceflag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->serviceflag:I

    const-string/jumbo v1, "media_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->fieldmediaid:I

    const-string/jumbo v1, "image_screener"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    aget-object v2, v7, v0

    invoke-static {v4, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->extractFromScreener(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static renameOP(Ljava/lang/String;Ljava/io/File;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v0, v9

    :cond_0
    :goto_4
    return v0

    :cond_1
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Unable to delete original file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :goto_7
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_8
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    move-object v8, v6

    :goto_9
    :try_start_d
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :goto_a
    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :goto_b
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :goto_c
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :goto_d
    throw v0

    :catch_9
    move-exception v2

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto :goto_c

    :catch_c
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v7, v2

    move-object v8, v3

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v8

    goto :goto_5

    :catch_e
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    goto :goto_5

    :catch_f
    move-exception v0

    move-object v2, v7

    move-object v3, v8

    goto :goto_5
.end method

.method private static saveExifInfo(Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "Orientation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSAltitude"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsAltitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSAltitudeRef"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSDateStamp"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsDateStamp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DateTime"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->dateTime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSLatitude"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLatitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSLatitudeRef"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSLongitude"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLongitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSLongitudeRef"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSProcessingMethod"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsProcessMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GPSTimeStamp"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsTimeStamp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FNumber"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Aperture:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ISOSpeedRatings"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->ISO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ExposureTime"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Exposure:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Make"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Make:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Model"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Model:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FocalLength"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->FocalLength:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Flash"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->flashInfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "WhiteBalance"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->WhiteBalance:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImageWidth"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->imageWidth:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImageLength"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->imageHeight:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Flash"

    iget-object v2, p1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->flashInfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static saveSEF([B[ILjava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;Ljava/lang/String;Landroid/content/Context;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v4, 0xa01

    :try_start_0
    invoke-static {p3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object v3, v2

    :goto_1
    const/4 v2, 0x0

    if-nez p7, :cond_3

    :cond_0
    :goto_2
    invoke-static {p2, p4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->Is_OrgFile_deleted(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-static {p2, p0, v4, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageEncode(Ljava/lang/String;[BII)I

    move-object/from16 v0, p5

    invoke-static {p2, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->saveExifInfo(Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;)V

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    const-string/jumbo v5, "SemAutoEnhance"

    const-string/jumbo v6, "APP - SEF addData S"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_6

    const-string/jumbo v5, "REAR_CAM_SELFIE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "FRONT_CAM_SELFIE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_1
    :goto_3
    move-object/from16 v10, p7

    :goto_4
    invoke-virtual {p4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_5
    const-string/jumbo v2, "SemAutoEnhance"

    const-string/jumbo v3, "APP - SEF addData E"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    move-object/from16 v3, p8

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->MediaDBUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceMediaDBInformation;JJLjava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Image_UTC_Data"

    invoke-static {p3, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "REAR_CAM_SELFIE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "FRONT_CAM_SELFIE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "Front_Cam_Selfie_Info"

    invoke-static {p3, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v2, "Rear_Cam_Selfie_Info"

    invoke-static {p3, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x1

    return v2

    :cond_6
    const-string/jumbo v2, "Auto_Enhance_Info"

    const/16 v5, 0x8c0

    const/4 v6, 0x1

    invoke-static {p3, v2, v4, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v2, "Auto_Enhance_Unprocessed"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p3, v2, p4, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    const-string/jumbo p7, "AUTO_ENHANCE"

    if-nez v3, :cond_7

    :goto_6
    move-object/from16 v10, p7

    goto :goto_4

    :cond_7
    const-string/jumbo v2, "Image_UTC_Data"

    const/16 v4, 0xa01

    const/4 v5, 0x1

    invoke-static {p3, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto :goto_6

    :cond_8
    const-string/jumbo v5, "Rear_Cam_Selfie_Info"

    const/16 v6, 0x900

    const/4 v7, 0x1

    invoke-static {p3, v5, v2, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v2, "Auto_Enhance_Info"

    const/16 v5, 0x901

    const/4 v6, 0x1

    invoke-static {p3, v2, v4, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v2, "Auto_Enhance_Unprocessed"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p3, v2, p4, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-eqz v3, :cond_1

    const-string/jumbo v2, "Image_UTC_Data"

    const/16 v4, 0xa01

    const/4 v5, 0x1

    invoke-static {p3, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v5, "Front_Cam_Selfie_Info"

    const/16 v6, 0x910

    const/4 v7, 0x1

    invoke-static {p3, v5, v2, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v2, "Auto_Enhance_Info"

    const/16 v5, 0x911

    const/4 v6, 0x1

    invoke-static {p3, v2, v4, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v2, "Auto_Enhance_Unprocessed"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p3, v2, p4, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    if-eqz v3, :cond_1

    const-string/jumbo v2, "Image_UTC_Data"

    const/16 v4, 0xa01

    const/4 v5, 0x1

    invoke-static {p3, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    goto/16 :goto_5
.end method

.method private static setDCMValues(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BlurStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->contrast:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->ContrastStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OutFocusBgStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->overExposure:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->OverExposureStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->underExposure:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->UnderExposureStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->brightnessMean:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->BrightnessMean:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featureNumber:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->FeatureNumber:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featurePointDistribution:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->FeaturePointDistribution:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->motionBlur:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->MotionBlur:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->skylineIncline:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->SkyLineIncline:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->totalQuality:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceDCMParameters;->TotalQuality:F

    return-void
.end method

.method private static setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setresizedBmp(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v3, 0x8

    const/4 v2, 0x6

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p0, v2, :cond_1

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_4

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_1
    if-eq p0, v0, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_3
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_4
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0
.end method
