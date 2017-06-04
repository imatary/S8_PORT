.class public Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;
.super Ljava/lang/Object;
.source "ImageScreener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/saiv/imageprocessing/ImageScreener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QualityFactorScores"
.end annotation


# instance fields
.field public blur:F

.field public brightnessMean:F

.field public contrast:F

.field public featureNumber:F

.field public featurePointDistribution:F

.field public isLowQuality:Z

.field public motionBlur:F

.field public outFocusBackground:F

.field public overExposure:F

.field public skylineIncline:F

.field final synthetic this$0:Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

.field public totalQuality:F

.field public underExposure:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/saiv/imageprocessing/ImageScreener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->this$0:Lcom/samsung/android/saiv/imageprocessing/ImageScreener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->contrast:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->brightnessMean:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->blur:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->motionBlur:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->outFocusBackground:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->overExposure:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->underExposure:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featureNumber:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->featurePointDistribution:F

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->skylineIncline:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->isLowQuality:Z

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/ImageScreener$QualityFactorScores;->totalQuality:F

    return-void
.end method
