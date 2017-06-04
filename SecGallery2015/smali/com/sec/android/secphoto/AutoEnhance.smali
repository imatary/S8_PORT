.class public Lcom/sec/android/secphoto/AutoEnhance;
.super Ljava/lang/Object;
.source "AutoEnhance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;,
        Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;
    }
.end annotation


# static fields
.field private static final TEMP_FILE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    sput-object v0, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method private static BeautyFaceDecision(Lcom/sec/android/secphoto/jni/ImageROI;II)Z
    .locals 8

    iget v4, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Right:I

    iget v5, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Left:I

    sub-int v1, v4, v5

    iget v4, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Bottom:I

    iget v5, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Top:I

    sub-int v0, v4, v5

    mul-int v4, v1, v0

    int-to-double v4, v4

    mul-int v6, p1, p2

    int-to-double v6, v6

    div-double v2, v4, v6

    const-string/jumbo v4, "AutoEnhance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Face Threshold is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v4, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static CoverChange(Ljava/lang/String;Landroid/content/Context;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "AutoEnhance"

    const-string/jumbo v3, "AutoEnhance Version : 2.1.1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    sget-object v2, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Auto_Enhance_Info"

    invoke-static {v12, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v13

    new-instance v4, Lcom/sec/android/secphoto/ExifInformation;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1}, Lcom/sec/android/secphoto/ExifInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/secphoto/MediaDBInformation;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/sec/android/secphoto/MediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v2, 0x0

    aget-byte v2, v13, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget-byte v2, v13, v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "Auto_Enhance_Unprocessed"

    invoke-static {v12, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_0

    const-string/jumbo v2, "AutoEnhance"

    const-string/jumbo v3, "Null returned from getSEFData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v15, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    invoke-static {v12}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteAllData(Ljava/io/File;)Z

    const-string/jumbo v2, "Auto_Enhance_Processed"

    const/4 v3, 0x1

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    move-object/from16 v0, v16

    invoke-static {v0, v2, v12, v3, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v13, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v13, v2

    const-string/jumbo v2, "Auto_Enhance_Info"

    const/16 v3, 0x8c0

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13, v3, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    :goto_2
    new-instance v14, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v14}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    sget-object v2, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/secphoto/AutoEnhance;->renameOP(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/secphoto/AutoEnhance;->saveImageInfo(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/secphoto/ExifInformation;Lcom/sec/android/secphoto/MediaDBInformation;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    const-string/jumbo v2, "AutoEnhance"

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_3
    :try_start_8
    throw v2

    :catch_3
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    aget-byte v2, v13, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "Auto_Enhance_Processed"

    invoke-static {v12, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_6

    const-string/jumbo v2, "AutoEnhance"

    const-string/jumbo v3, "Null returned from getSEFData(). It may infer wrong KeyName. Exiting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_9
    new-instance v15, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v15, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v15, :cond_7

    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    :cond_7
    :goto_4
    invoke-static {v12}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteAllData(Ljava/io/File;)Z

    const-string/jumbo v2, "Auto_Enhance_Unprocessed"

    const/4 v3, 0x1

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    move-object/from16 v0, v16

    invoke-static {v0, v2, v12, v3, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v13, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v13, v2

    const-string/jumbo v2, "Auto_Enhance_Info"

    const/16 v3, 0x8c0

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13, v3, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    goto/16 :goto_2

    :catch_4
    move-exception v2

    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    :catch_5
    move-exception v10

    const-string/jumbo v2, "AutoEnhance"

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    :catch_6
    move-exception v3

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v15, :cond_9

    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5

    :cond_9
    :goto_5
    :try_start_10
    throw v2

    :catch_7
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_5

    :cond_b
    const-string/jumbo v2, "AutoEnhance"

    const-string/jumbo v3, "Wrong image SEF INFO data. Check the SEF INFO."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public static EnhanceImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)I
    .locals 40

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Version : 2.1.1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "imagePath is null... No operation executed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x4

    new-array v7, v5, [I

    invoke-static/range {p0 .. p0}, Lcom/sec/android/secphoto/AutoEnhance;->getImageDimension(Ljava/lang/String;)[I

    move-result-object v20

    new-instance v22, Lcom/sec/android/secphoto/ExifInformation;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secphoto/ExifInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v23, Lcom/sec/android/secphoto/MediaDBInformation;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secphoto/MediaDBInformation;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v9, Lcom/sec/android/secphoto/DCMParameters;

    invoke-direct {v9}, Lcom/sec/android/secphoto/DCMParameters;-><init>()V

    const/4 v5, 0x1

    new-array v11, v5, [Z

    new-instance v37, Lcom/sec/android/secphoto/Profiling;

    invoke-direct/range {v37 .. v37}, Lcom/sec/android/secphoto/Profiling;-><init>()V

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getOrientation()I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/sec/android/secphoto/AutoEnhance;->setresizedBmp(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v4, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;[ILcom/sec/samsung/gallery/lib/libinterface/FaceDetectorInterface;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;[Z)V

    new-instance v30, Ljava/lang/Thread;

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->start()V

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/secphoto/Profiling;->Start()J

    const/4 v5, 0x0

    :try_start_0
    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->nativeIntAlloc(I)[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1, v5, v6}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->ImageDecode(Ljava/lang/String;[III)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "Quram Decoder failed... Exiting app"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v33

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance inputBuffer allocation failed - OOM"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v5, "AE: Native Memory Allocation and Decode Time - "

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    new-instance v34, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;-><init>([III)V

    new-instance v35, Ljava/lang/Thread;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->start()V

    const/4 v5, 0x0

    :try_start_1
    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    mul-int/2addr v5, v6

    new-array v0, v5, [I

    move-object/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    const/4 v5, 0x0

    aget-boolean v5, v11, v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "Entering Face check module..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x3

    aget v5, v7, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    :cond_3
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getOrientation()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v7, v0, v1}, Lcom/sec/android/secphoto/AutoEnhance;->getOriginalFaceSize_90degrees([I[ILandroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    new-instance v18, Lcom/sec/android/secphoto/jni/ImageROI;

    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, 0x1

    aget v6, v7, v6

    const/4 v8, 0x2

    aget v8, v7, v8

    const/4 v10, 0x3

    aget v10, v7, v10

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6, v8, v10}, Lcom/sec/android/secphoto/jni/ImageROI;-><init>(IIII)V

    new-instance v12, Lcom/sec/android/secphoto/jni/Params;

    iget v13, v9, Lcom/sec/android/secphoto/DCMParameters;->ContrastStrength:F

    iget v14, v9, Lcom/sec/android/secphoto/DCMParameters;->UnderExposureStrength:F

    iget v15, v9, Lcom/sec/android/secphoto/DCMParameters;->OverExposureStrength:F

    iget v0, v9, Lcom/sec/android/secphoto/DCMParameters;->BlurStrength:F

    move/from16 v16, v0

    iget v0, v9, Lcom/sec/android/secphoto/DCMParameters;->OutFocusBgStrength:F

    move/from16 v17, v0

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/secphoto/jni/Params;-><init>(FFFFFLcom/sec/android/secphoto/jni/ImageROI;)V

    new-instance v28, Lcom/sec/android/secphoto/jni/ImageInfo;

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    const/4 v8, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/sec/android/secphoto/jni/ImageInfo;-><init>([IIII)V

    new-instance v29, Lcom/sec/android/secphoto/jni/ImageInfo;

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    const/4 v8, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/sec/android/secphoto/jni/ImageInfo;-><init>([IIII)V

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/secphoto/Profiling;->Start()J

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->AutoEnhanceInit(Lcom/sec/android/secphoto/jni/ImageInfo;Lcom/sec/android/secphoto/jni/Params;)J

    move-result-wide v26

    const-wide/16 v14, 0x0

    cmp-long v5, v26, v14

    if-nez v5, :cond_8

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Init Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v33

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance outputBuffer allocation failed - OOM"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getOrientation()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v7, v0, v1}, Lcom/sec/android/secphoto/AutoEnhance;->getOriginalFaceSize_270degrees([I[ILandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getOrientation()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v7, v0, v1}, Lcom/sec/android/secphoto/AutoEnhance;->getOriginalFaceSize_180degrees([I[ILandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v7, v0, v1}, Lcom/sec/android/secphoto/AutoEnhance;->getOriginalFaceSize_0degrees([I[ILandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_8
    invoke-static/range {v26 .. v27}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->AutoEnhanceDecision(J)I

    move-result v39

    if-eqz v39, :cond_9

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Decision Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-static/range {v26 .. v27}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->getAutoEnhanceDecision(J)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/secphoto/AutoEnhance;->IsBLCRequired(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {v26 .. v29}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->AutoEnhanceApply(JLcom/sec/android/secphoto/jni/ImageInfo;Lcom/sec/android/secphoto/jni/ImageInfo;)I

    move-result v39

    if-eqz v39, :cond_f

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Apply Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6}, Lcom/sec/android/secphoto/AutoEnhance;->BeautyFaceDecision(Lcom/sec/android/secphoto/jni/ImageROI;II)Z

    move-result v31

    const-string/jumbo v5, "AutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Image name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " Face Beauty decision: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "AutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Face coordinates are: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x3

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v31, :cond_b

    const/16 v5, 0xb

    move/from16 v0, v25

    if-eq v0, v5, :cond_e

    :cond_b
    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x2

    aget v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x3

    aget v5, v7, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    :cond_c
    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/secphoto/Profiling;->Start()J

    new-instance v32, Lcom/arcsoft/beautyface/BeautyFaceInterface;

    invoke-direct/range {v32 .. v32}, Lcom/arcsoft/beautyface/BeautyFaceInterface;-><init>()V

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/arcsoft/beautyface/BeautyFaceInterface;->beautyParams([III[I)V

    invoke-virtual/range {v32 .. v32}, Lcom/arcsoft/beautyface/BeautyFaceInterface;->beautyFace()V

    :cond_d
    const/16 v5, 0xa

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v5}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->setAutoEnhanceDecision(JI)V

    const-string/jumbo v5, ">>>>>>>> Beauty Face Decision and Apply timings :"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    :cond_e
    invoke-static/range {v26 .. v29}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->AutoEnhanceApply(JLcom/sec/android/secphoto/jni/ImageInfo;Lcom/sec/android/secphoto/jni/ImageInfo;)I

    move-result v39

    if-eqz v39, :cond_f

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Apply Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-static/range {v26 .. v27}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->AutoEnhanceDeInit(J)I

    move-result v39

    if-eqz v39, :cond_10

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "AutoEnhance Apply Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">>>>>>>> 4. AE_Engine: Native(Engine) time with DCMInfo Dims:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    const-string/jumbo v5, "AutoEnhance"

    const-string/jumbo v6, "De-Allocating Native Memory"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v36 .. v36}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->nativeIntRelease([I)I

    :try_start_2
    new-instance v38, Lcom/sec/android/secphoto/Profiling;

    invoke-direct/range {v38 .. v38}, Lcom/sec/android/secphoto/Profiling;-><init>()V

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/secphoto/Profiling;->Start()J

    move-object/from16 v21, p0

    move-object/from16 v24, p2

    invoke-static/range {v19 .. v24}, Lcom/sec/android/secphoto/AutoEnhance;->saveSEF([I[ILjava/lang/String;Lcom/sec/android/secphoto/ExifInformation;Lcom/sec/android/secphoto/MediaDBInformation;Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">>>>>>>>Profiler: 6. AE_Framework: Save SEF time -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v33

    const-string/jumbo v5, "AutoEnhance"

    invoke-virtual/range {v33 .. v33}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static IsBLCRequired(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Rect;[I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/secphoto/AutoEnhance;->setFaceRect(Landroid/graphics/Rect;[I)V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/Bitmap;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/android/secphoto/AutoEnhance;->getDCMParametersFromIS(Landroid/graphics/Bitmap;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;)V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AutoEnhance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to delete the file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getDCMParametersFromIS(Landroid/graphics/Bitmap;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2800

    new-array v5, v6, [B

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v6, "imageScreener/Low&NotLow.txt"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_0

    const-string/jumbo v6, "AutoEnhance"

    const-string/jumbo v7, "parameterBuffer1 is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    new-instance v2, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v6}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->getQualityFactorScores([BIII)Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p1, v3}, Lcom/sec/android/secphoto/AutoEnhance;->setDCMValues(Lcom/sec/android/secphoto/DCMParameters;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v6

    :cond_3
    const-string/jumbo v6, "AutoEnhance"

    const-string/jumbo v7, "DCMValues are null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getImageDimension(Ljava/lang/String;)[I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v0, v2, [I

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v0, v2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, v0, v4

    return-object v0
.end method

.method private static getOriginalFaceSize_0degrees([I[ILandroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget v0, p0, v2

    aget v1, p1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    aput v0, p0, v2

    aget v0, p0, v3

    aget v1, p1, v3

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    aput v0, p0, v3

    aget v0, p0, v4

    aget v1, p1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    aput v0, p0, v4

    aget v0, p0, v5

    aget v1, p1, v3

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    aput v0, p0, v5

    return-void
.end method

.method private static getOriginalFaceSize_180degrees([I[ILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    aget v2, p0, v5

    sub-int/2addr v1, v2

    aput v1, p0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    aput v1, p0, v5

    aget v0, p0, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    aget v2, p0, v6

    sub-int/2addr v1, v2

    aput v1, p0, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    aput v1, p0, v6

    aget v1, p0, v3

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v3

    aget v1, p0, v4

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v4

    aget v1, p0, v5

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v5

    aget v1, p0, v6

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v6

    return-void
.end method

.method private static getOriginalFaceSize_270degrees([I[ILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    aget v2, p0, v6

    sub-int/2addr v1, v2

    aput v1, p0, v3

    aget v1, p0, v5

    aput v1, p0, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    aget v2, p0, v4

    sub-int/2addr v1, v2

    aput v1, p0, v5

    aput v0, p0, v4

    aget v1, p0, v3

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v3

    aget v1, p0, v4

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v4

    aget v1, p0, v5

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v5

    aget v1, p0, v6

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v6

    return-void
.end method

.method private static getOriginalFaceSize_90degrees([I[ILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p0, v3

    aget v1, p0, v4

    aput v1, p0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    aget v2, p0, v5

    sub-int/2addr v1, v2

    aput v1, p0, v4

    aget v1, p0, v6

    aput v1, p0, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    aput v1, p0, v6

    aget v1, p0, v3

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v3

    aget v1, p0, v4

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v4

    aget v1, p0, v5

    aget v2, p1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v5

    aget v1, p0, v6

    aget v2, p1, v4

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, p0, v6

    return-void
.end method

.method private static isOrgFileDeleted(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AutoEnhance"

    const-string/jumbo v1, "Unable to delete original file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static renameOP(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "AutoEnhance"

    const-string/jumbo v5, "Unable to delete original file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x1

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v17, 0x0

    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/16 v16, 0x0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v3

    const/4 v15, 0x0

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v8

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-eqz v8, :cond_2

    if-eqz v14, :cond_9

    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v15, :cond_c

    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    if-eqz v16, :cond_e

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    if-eqz v17, :cond_10

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_4
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_9
    invoke-virtual {v14, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_5
    if-eqz v3, :cond_6

    if-eqz v5, :cond_d

    :try_start_b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_6
    :goto_6
    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catch_2
    move-exception v4

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_7
    if-eqz v12, :cond_7

    if-eqz v5, :cond_f

    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_7
    :goto_8
    :try_start_f
    throw v4
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catch_3
    move-exception v4

    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_9
    if-eqz v10, :cond_8

    if-eqz v5, :cond_11

    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    :cond_8
    :goto_a
    :try_start_12
    throw v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    :catch_4
    move-exception v2

    const-string/jumbo v4, "AutoEnhance"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    :try_start_13
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    move-object v5, v15

    goto :goto_5

    :catch_5
    move-exception v4

    :try_start_14
    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_b
    if-eqz v8, :cond_a

    if-eqz v5, :cond_b

    :try_start_15
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_a
    :goto_c
    :try_start_16
    throw v4

    :catch_6
    move-exception v14

    invoke-virtual {v5, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_b
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_c

    :catch_7
    move-exception v4

    :try_start_17
    invoke-virtual {v15, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_5
    move-exception v4

    move-object/from16 v5, v16

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_2

    :catch_8
    move-exception v14

    invoke-virtual {v5, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_6

    :catch_9
    move-exception v4

    :try_start_18
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_6
    move-exception v4

    move-object/from16 v5, v17

    goto :goto_9

    :cond_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    :catch_a
    move-exception v14

    invoke-virtual {v5, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_8

    :catch_b
    move-exception v4

    :try_start_19
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_4

    :catch_c
    move-exception v14

    invoke-virtual {v5, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_a

    :catchall_7
    move-exception v4

    move-object v5, v14

    goto :goto_b
.end method

.method private static saveImageInfo(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/secphoto/ExifInformation;Lcom/sec/android/secphoto/MediaDBInformation;JJ)V
    .locals 6

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "datetaken"

    iget-wide v4, p3, Lcom/sec/android/secphoto/MediaDBInformation;->dateTaken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "orientation"

    iget-wide v4, p3, Lcom/sec/android/secphoto/MediaDBInformation;->orientation:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "_size"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "sef_file_type"

    const/16 v4, 0x8c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p2, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v3, p1}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->setExifInterface(Ljava/lang/String;)V

    return-void
.end method

.method private static saveSEF([I[ILjava/lang/String;Lcom/sec/android/secphoto/ExifInformation;Lcom/sec/android/secphoto/MediaDBInformation;Landroid/content/Context;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Lcom/sec/android/secphoto/Profiling;

    invoke-direct {v10}, Lcom/sec/android/secphoto/Profiling;-><init>()V

    invoke-virtual {v10}, Lcom/sec/android/secphoto/Profiling;->Start()J

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    sget-object v0, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/secphoto/AutoEnhance;->isOrgFileDeleted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x0

    invoke-static {p2, p0, v0, v1, v2}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->ImageEncode(Ljava/lang/String;[IIII)I

    const-string/jumbo v0, "AE: Native Encoding Time is "

    invoke-virtual {v10, v0}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    const/4 v0, 0x2

    new-array v9, v0, [B

    fill-array-data v9, :array_0

    const-string/jumbo v0, "Auto_Enhance_Info"

    const/16 v1, 0x8c0

    sget v2, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v8, v0, v9, v1, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    const-string/jumbo v0, "Auto_Enhance_Unprocessed"

    const/4 v1, 0x1

    sget v2, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v8, v0, v11, v1, v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    sget-object v0, Lcom/sec/android/secphoto/AutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/secphoto/AutoEnhance;->deleteFile(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    move-object/from16 v0, p5

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secphoto/AutoEnhance;->saveImageInfo(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/secphoto/ExifInformation;Lcom/sec/android/secphoto/MediaDBInformation;JJ)V

    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private static setDCMValues(Lcom/sec/android/secphoto/DCMParameters;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iput v0, p0, Lcom/sec/android/secphoto/DCMParameters;->BlurStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->contrast:F

    iput v0, p0, Lcom/sec/android/secphoto/DCMParameters;->ContrastStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    iput v0, p0, Lcom/sec/android/secphoto/DCMParameters;->OutFocusBgStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->overExposure:F

    iput v0, p0, Lcom/sec/android/secphoto/DCMParameters;->OverExposureStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->underExposure:F

    iput v0, p0, Lcom/sec/android/secphoto/DCMParameters;->UnderExposureStrength:F

    return-void
.end method

.method private static setFaceRect(Landroid/graphics/Rect;[I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Landroid/graphics/Rect;->right:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    aput v1, p1, v0

    return-void
.end method

.method private static setresizedBmp(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v1, 0x0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    const/16 v2, 0x8

    if-ne p0, v2, :cond_1

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-ne p0, v4, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    move-object v0, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    if-ne p0, v3, :cond_3

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_3
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0
.end method
