.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;
    }
.end annotation


# instance fields
.field private mImageRestorerPtr:J

.field private mRestoreFiltersEstimatorPtr:J

.field private mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "saiv_nightshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->MULTICORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;-><init>(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->initRestoreFiltersEstimator()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->initImageRestorer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    return-void
.end method

.method private native dayNightRate(J)F
.end method

.method private static native enhanceContrast(JJF)Z
.end method

.method public static enhanceContrast(Lcom/samsung/android/saiv/vision/Image;Lcom/samsung/android/saiv/vision/Image;F)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-nez p0, :cond_2

    :cond_0
    return v2

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->enhanceContrast(JJF)Z

    move-result v0

    return v0
.end method

.method private native estimateFiltersParameters(J)J
.end method

.method private native getFiltersParameters(J[F)Z
.end method

.method private native initImageRestorer(I)J
.end method

.method private native initRestoreFiltersEstimator()J
.end method

.method private static native makeSharp(JJFI)Z
.end method

.method public static makeSharp(Lcom/samsung/android/saiv/vision/Image;Lcom/samsung/android/saiv/vision/Image;FI)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-nez p0, :cond_2

    :cond_0
    return v2

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    if-lt p3, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->makeSharp(JJFI)Z

    move-result v0

    return v0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    return v2
.end method

.method public static native noiseRemoval([B[BII)I
.end method

.method private static native reduceNoiseUsingBilateral(JJFFFFI)Z
.end method

.method public static reduceNoiseUsingBilateral(Lcom/samsung/android/saiv/vision/Image;Lcom/samsung/android/saiv/vision/Image;FFFFLcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;)Z
    .locals 9

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-nez p0, :cond_2

    :cond_0
    return v1

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    cmpg-float v2, p2, v5

    if-gez v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    cmpg-float v2, p3, v4

    if-gtz v2, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    cmpg-float v2, p4, v5

    if-gez v2, :cond_6

    :goto_3
    if-nez v0, :cond_3

    cmpg-float v0, p5, v4

    if-gtz v0, :cond_7

    :cond_3
    return v1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    invoke-virtual {p6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->ordinal()I

    move-result v8

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->reduceNoiseUsingBilateral(JJFFFFI)Z

    move-result v0

    return v0
.end method

.method private static native reduceNoiseUsingDCT(JJFF)Z
.end method

.method public static reduceNoiseUsingDCT(Lcom/samsung/android/saiv/vision/Image;Lcom/samsung/android/saiv/vision/Image;FF)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-nez p0, :cond_2

    :cond_0
    return v1

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    cmpg-float v0, p2, v3

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    cmpg-float v0, p3, v3

    if-gtz v0, :cond_5

    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->reduceNoiseUsingDCT(JJFF)Z

    move-result v0

    return v0
.end method

.method private native releaseFiltersParameters(J)V
.end method

.method private native releaseImageRestorer(J)V
.end method

.method private native releaseRestoreFiltersEstimator(J)V
.end method

.method private native restoreImage(JJJJ)Z
.end method

.method private native setQualityFactors(JJ[F)Z
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseRestoreFiltersEstimator(J)V

    iput-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseImageRestorer(J)V

    iput-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    return-void
.end method

.method public enhanceAutomatic(Lcom/samsung/android/saiv/vision/Image;Lcom/samsung/android/saiv/vision/Image;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    return v0

    :cond_1
    move-object p2, p1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->toArray()[F

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setQualityFactors(JJ[F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->estimateFiltersParameters(J)J

    move-result-wide v8

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->restoreImage(JJJJ)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-direct {p0, v8, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseFiltersParameters(J)V

    return v0

    :cond_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public evaluateFilterConfig(Lcom/samsung/android/saiv/vision/Image;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->toArray()[F

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setQualityFactors(JJ[F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->estimateFiltersParameters(J)J

    move-result-wide v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->getFiltersParameters(J[F)Z

    move-result v3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseFiltersParameters(J)V

    if-nez v3, :cond_2

    return-object v7

    :cond_0
    return-object v7

    :cond_1
    return-object v7

    :cond_2
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;

    invoke-direct {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->fromArray([F)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNightSceneProbability(Lcom/samsung/android/saiv/vision/Image;)F
    .locals 8

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->toArray()[F

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setQualityFactors(JJ[F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->dayNightRate(J)F

    move-result v0

    return v0

    :cond_0
    return v7

    :cond_1
    return v7
.end method

.method public setShotInfo(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    goto :goto_0
.end method

.method public setShotParameters(Landroid/media/ExifInterface;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "ExposureTime"

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    const-string/jumbo v2, "DateTime"

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->compressionLevel:F

    const-string/jumbo v1, "ISOSpeedRatings"

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    const-string/jumbo v1, "FNumber"

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    const-string/jumbo v1, "FocalLength"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->focalLength:F

    const-string/jumbo v1, "Flash"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->flashLevel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setShotInfo(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->setShotInfo(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;)V

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->exposureTime:F

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iput-object v3, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->sensitivity_ISO:I

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->aperture:F

    goto :goto_3
.end method

.method public validBrightness(Landroid/media/ExifInterface;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "ISOSpeedRatings"

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "ExposureTime"

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const-string/jumbo v3, "FNumber"

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    if-gtz v1, :cond_5

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v0

    :cond_4
    return v0

    :cond_5
    cmpl-float v1, v2, v4

    if-lez v1, :cond_0

    cmpl-float v1, v3, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
