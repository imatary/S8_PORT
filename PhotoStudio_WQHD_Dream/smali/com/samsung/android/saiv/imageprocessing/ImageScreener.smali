.class public Lcom/samsung/android/saiv/imageprocessing/ImageScreener;
.super Ljava/lang/Object;
.source "ImageScreener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;
    }
.end annotation


# static fields
.field private static final FACTOR_BLUREXTENT:I = 0x2

.field private static final FACTOR_BLURPER:I = 0x1

.field private static final FACTOR_BRIGHTNESSMEAN:I = 0xa

.field private static final FACTOR_CONTRAST:I = 0x0

.field private static final FACTOR_CROPBLURPER:I = 0xb

.field private static final FACTOR_FEATUREPOINTDISTRIBUTION:I = 0x6

.field private static final FACTOR_GRAD_HISTO_SPAN:I = 0x8

.field private static final FACTOR_IS_LOW_QUALITY:I = 0xc

.field private static final FACTOR_MOTIONBLUR:I = 0x9

.field private static final FACTOR_NFEATURE:I = 0x5

.field private static final FACTOR_OVEREXPOSURE:I = 0x3

.field private static final FACTOR_SKYLINEINCLINE:I = 0x7

.field private static final FACTOR_TOTAL_QUALITY:I = 0xd

.field private static final FACTOR_UNDEREXPOSURE:I = 0x4

.field public static final IMAGE_FORMAT_ARGB32:I = 0x0

.field public static final IMAGE_FORMAT_YUV420P:I = 0x9


# instance fields
.field private mSeipHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "saiv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    invoke-direct {p0, p1}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    return-void
.end method

.method private native addClassifier(JLjava/lang/String;)I
.end method

.method private native getAllQualityFactors(J[BIII[F)Z
.end method

.method private native init(Ljava/lang/String;)J
.end method

.method private native isLowQuality(J[BIII)Z
.end method

.method private native release(J)I
.end method


# virtual methods
.method public addClassifier(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->addClassifier(JLjava/lang/String;)I

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->release()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getQualityFactorScores([BIII)Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;
    .locals 9

    const/16 v1, 0x14

    new-array v8, v1, [F

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->getAllQualityFactors(J[BIII[F)Z

    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;

    invoke-direct {v0, p0}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;-><init>(Lcom/samsung/android/saiv/imageprocessing/ImageScreener;)V

    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->contrast:F

    const/16 v1, 0xa

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->brightnessMean:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aget v2, v8, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    aget v4, v8, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iget v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iget v2, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    const/16 v1, 0x9

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->motionBlur:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aget v2, v8, v2

    const/16 v3, 0xb

    aget v3, v8, v3

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, v8, v3

    add-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, v8, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    const-string v1, "ImageScreening"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rawFactors[FACTOR_BLURPER]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ImageScreening"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rawFactors[FACTOR_CROPBLURPER]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xb

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ImageScreening"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rawFactors[FACTOR_BLUREXTENT]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    iget v2, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    const/4 v1, 0x3

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->overExposure:F

    const/4 v1, 0x4

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->underExposure:F

    const/4 v1, 0x5

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featureNumber:F

    const/4 v1, 0x6

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featurePointDistribution:F

    const/4 v1, 0x7

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->skylineIncline:F

    const/16 v1, 0xc

    aget v1, v8, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget v1, v8, v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->isLowQuality:Z

    const/16 v1, 0xd

    aget v1, v8, v1

    iput v1, v0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->totalQuality:F

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLowQuality([BIII)Z
    .locals 8

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->isLowQuality(J[BIII)Z

    move-result v0

    return v0
.end method

.method public release()I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->release(J)I

    move-result v0

    iput-wide v4, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener;->mSeipHandle:J

    :cond_0
    return v0
.end method
