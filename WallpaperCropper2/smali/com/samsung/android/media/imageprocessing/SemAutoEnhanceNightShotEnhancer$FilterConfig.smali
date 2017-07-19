.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
    }
.end annotation


# instance fields
.field DCTSigma:F

.field DCTThreshold:F

.field bilateralSamplingRange:F

.field bilateralSamplingSpatial:F

.field bilateralSigmaRange:F

.field bilateralSigmaSpatial:F

.field blur:F

.field contrastEnhancementClipLimit:F

.field noise:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromArray([F)V
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSigmaSpatial:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSigmaRange:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSamplingSpatial:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSamplingRange:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->DCTSigma:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->DCTThreshold:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->contrastEnhancementClipLimit:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->noise:F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->blur:F

    return-void
.end method

.method public toArray()[F
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSigmaSpatial:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSigmaRange:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSamplingSpatial:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->bilateralSamplingRange:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->DCTSigma:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->DCTThreshold:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->contrastEnhancementClipLimit:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->noise:F

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;->blur:F

    aput v2, v0, v1

    return-object v0
.end method
