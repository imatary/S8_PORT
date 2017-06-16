.class public Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhancePE;
.super Ljava/lang/Object;
.source "SemAutoEnhancePE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAutoEnhance"

.field private static final maxFaceNum:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enhanceImage([I[IIIII[Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;Landroid/content/Context;)I
    .locals 23

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/4 v15, 0x0

    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage START"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/16 v19, 0x0

    mul-int v8, p2, p3

    mul-int/lit8 v8, v8, 0x4

    :try_start_0
    new-array v5, v8, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v8, p2, p3

    mul-int/lit8 v8, v8, 0x4

    :try_start_1
    new-array v0, v8, [B

    move-object/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage ARGBToYUV420 S"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->ARGBToYUV420([I[BII)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage ARGBToYUV420 E"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;-><init>()V

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "enhanceImage orientation :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "getImageScreenerValues S"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    move-object/from16 v3, p7

    invoke-static {v5, v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhancePE;->getImageScreenerValues([BIILcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    const-string v8, "SemAutoEnhance"

    const-string v9, "getImageScreenerValues E"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    if-lez p5, :cond_3

    const/4 v13, 0x1

    const/4 v8, 0x3

    move/from16 v0, p4

    if-ne v0, v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, p6, v8

    iget v0, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    move/from16 v22, v0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    sub-int v9, p3, v9

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    sub-int v9, p3, v22

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    iget v0, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    move/from16 v22, v0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    sub-int v9, p2, v9

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    sub-int v9, p2, v22

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    :cond_0
    :goto_1
    new-instance v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;

    const/4 v8, 0x0

    aget-object v8, p6, v8

    iget v8, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    const/4 v10, 0x0

    aget-object v10, p6, v10

    iget v10, v10, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    const/4 v11, 0x0

    aget-object v11, p6, v11

    iget v11, v11, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    invoke-direct {v14, v8, v9, v10, v11}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;-><init>(IIII)V

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AERoi.left : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AERoi.top : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AERoi.right : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AERoi.bottom : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v4, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;

    const/4 v9, 0x4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;-><init>([BIIII)V

    new-instance v6, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;

    const/4 v11, 0x4

    move-object/from16 v7, v19

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;-><init>([BIIII)V

    new-instance v7, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;

    move-object/from16 v0, v18

    iget v8, v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->ContrastStrength:F

    move-object/from16 v0, v18

    iget v9, v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->UnderExposureStrength:F

    move-object/from16 v0, v18

    iget v10, v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OverExposureStrength:F

    move-object/from16 v0, v18

    iget v11, v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->BlurStrength:F

    move-object/from16 v0, v18

    iget v12, v0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OutFocusBgStrength:F

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;-><init>(FFFFFILcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;)V

    const-string v8, "SemAutoEnhance"

    const-string v9, "AutoEnhanceInit S"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v7}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->AutoEnhanceInit(Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;)J

    move-result-wide v16

    const-wide/16 v8, 0x0

    cmp-long v8, v16, v8

    if-nez v8, :cond_4

    const-string v8, "SemAutoEnhance"

    const-string v9, "SemAutoEnhance Init Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :goto_3
    return v8

    :catch_0
    move-exception v20

    const-string v8, "SemAutoEnhance"

    const-string v9, "SemAutoEnhance inputbuffer allocation failed - OOM"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    goto :goto_3

    :catch_1
    move-exception v20

    const-string v8, "SemAutoEnhance"

    const-string v9, "SemAutoEnhance inputbuffer allocation failed - OOM"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    goto :goto_3

    :catch_2
    move-exception v20

    const-string v8, "SemAutoEnhance"

    const-string v9, "getImageScreenerValues throws IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x6

    move/from16 v0, p4

    if-ne v0, v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, p6, v8

    iget v0, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    move/from16 v22, v0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    sub-int v9, p3, v9

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    sub-int v9, p3, v22

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    goto/16 :goto_1

    :cond_2
    const/16 v8, 0x8

    move/from16 v0, p4

    if-ne v0, v8, :cond_0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    iget v0, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    move/from16 v22, v0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    sub-int v9, p2, v9

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    iget v9, v9, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    sub-int v9, p2, v9

    iput v9, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    const/4 v8, 0x0

    aget-object v8, p6, v8

    move/from16 v0, v22

    iput v0, v8, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    goto/16 :goto_1

    :cond_3
    new-instance v14, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v14, v8, v9, v10, v11}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;-><init>(IIII)V

    goto/16 :goto_2

    :cond_4
    const-string v8, "SemAutoEnhance"

    const-string v9, "AutoEnhanceInit E"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "AutoEnhanceDecision S"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->AutoEnhanceDecision(J)I

    move-result v21

    if-eqz v21, :cond_5

    const-string v8, "SemAutoEnhance"

    const-string v9, "AutoEnhance Decision Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_5
    const-string v8, "SemAutoEnhance"

    const-string v9, "AutoEnhanceDecision E"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->getAutoEnhanceDecision(J)I

    move-result v15

    const-string v8, "SemAutoEnhance"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SemAutoEnhanceDecision : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "APP - SemAutoEnhanceApply S "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, v16

    move/from16 v2, p5

    invoke-static {v0, v1, v4, v6, v2}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->AutoEnhanceApply(JLcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;I)I

    move-result v21

    if-eqz v21, :cond_6

    const-string v8, "SemAutoEnhance"

    const-string v9, "SemAutoEnhance Apply Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_6
    const-string v8, "SemAutoEnhance"

    const-string v9, "APP - SemAutoEnhanceApply E "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage YUV420ToARGB S"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->YUV420ToARGB([B[III)I

    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage YUV420ToARGB E"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_7

    invoke-static {v5}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->nativeByteRelease([B)I

    const/4 v5, 0x0

    :cond_7
    if-eqz v19, :cond_8

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->nativeByteRelease([B)I

    const/16 v19, 0x0

    :cond_8
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;->AutoEnhanceDeInit(J)I

    move-result v21

    if-eqz v21, :cond_9

    const-string v8, "SemAutoEnhance"

    const-string v9, "SemAutoEnhance Apply Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_9
    const-string v8, "SemAutoEnhance"

    const-string v9, "enhanceImage END"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method public static getFaceInformation([BI[Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;[III)I
    .locals 7

    new-instance v2, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v2}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v2, p0, p4, p5, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->run([BIILjava/util/ArrayList;)I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_0

    const/16 v0, 0xa

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    return v0

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v5}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    aget-object v5, p2, v3

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Left:I

    aget-object v5, p2, v3

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Top:I

    aget-object v5, p2, v3

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v5, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Right:I

    aget-object v5, p2, v3

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;->s32Bottom:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v5}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v5

    aput v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getImageScreenerValues([BIILcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v5, 0x2800

    new-array v4, v5, [B

    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "imageScreener/Low&NotLow.txt"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_0

    const-string v5, "SemAutoEnhance"

    const-string v6, "parameterBuffer1 is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    new-instance v1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v5}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-virtual {v1, p0, p1, p2, v5}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->getQualityFactorScores([BIII)Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p3, v2}, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhancePE;->setDCMValues(Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V

    :cond_2
    :goto_0
    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.BlurStrength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->BlurStrength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.ContrastStrength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->ContrastStrength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.OutFocusBgStrength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OutFocusBgStrength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.OverExposureStrength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OverExposureStrength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.UnderExposureStrength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->UnderExposureStrength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.BrightnessMean :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->BrightnessMean:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.FeatureNumber: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->FeatureNumber:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.FeaturePointDistribution: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->FeaturePointDistribution:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.MotionBlur: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->MotionBlur:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.SkyLineIncline: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->SkyLineIncline:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemAutoEnhance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DCM.TotalQuality: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p3, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->TotalQuality:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v5

    :cond_4
    const-string v5, "SemAutoEnhance"

    const-string v6, "DCMValues are null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static setDCMValues(Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->BlurStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->contrast:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->ContrastStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OutFocusBgStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->overExposure:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->OverExposureStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->underExposure:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->UnderExposureStrength:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->brightnessMean:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->BrightnessMean:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featureNumber:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->FeatureNumber:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featurePointDistribution:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->FeaturePointDistribution:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->motionBlur:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->MotionBlur:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->skylineIncline:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->SkyLineIncline:F

    iget v0, p1, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->totalQuality:F

    iput v0, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceDCMParametersPE;->TotalQuality:F

    return-void
.end method
