.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public IsFlash:I

.field public IsScenery:I

.field public IsValidEye:I

.field public fContrastParam:F

.field public fGBlurFactor:F

.field public fOEParam:F

.field public fOFBlurFactor:F

.field public fTiltAngle:F

.field public fUEParam:F

.field public faceDetection:I

.field public option:I

.field public sFaceROI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;


# direct methods
.method public constructor <init>(FFFFFFILcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fContrastParam:F

    iput p2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fUEParam:F

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fOEParam:F

    iput p4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fGBlurFactor:F

    iput p5, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fOFBlurFactor:F

    iput p6, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->fTiltAngle:F

    iput p7, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->faceDetection:I

    iput-object p8, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->sFaceROI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;

    iput p9, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->IsFlash:I

    iput p10, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->IsValidEye:I

    iput p11, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->option:I

    iput p12, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;->IsScenery:I

    return-void
.end method
