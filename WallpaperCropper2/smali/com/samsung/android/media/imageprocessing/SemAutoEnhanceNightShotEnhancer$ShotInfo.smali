.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShotInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;
    }
.end annotation


# instance fields
.field public aperture:F

.field public brightness:F

.field public compressionLevel:F

.field public exposureTime:F

.field public flashLevel:I

.field public focalLength:F

.field public sensitivity_ISO:I

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->exposureTime:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->compressionLevel:F

    iput v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->sensitivity_ISO:I

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->aperture:F

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->focalLength:F

    iput v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->flashLevel:I

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->brightness:F

    return-void
.end method


# virtual methods
.method public toArray()[F
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [F

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->exposureTime:F

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    aput v0, v1, v2

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->compressionLevel:F

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ISO:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->sensitivity_ISO:I

    int-to-float v2, v2

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->aperture:F

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->focalLength:F

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->flashLevel:I

    int-to-float v2, v2

    aput v2, v1, v0

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->flashLevel:I

    int-to-float v2, v2

    aput v2, v1, v0

    return-object v1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method
