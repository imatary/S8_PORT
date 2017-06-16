.class public Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;
.super Ljava/lang/Object;
.source "SemAutoEnhanceParamsPE.java"


# instance fields
.field public fContrastParam:F

.field public fGBlurFactor:F

.field public fOEParam:F

.field public fOFBlurFactor:F

.field public fUEParam:F

.field public faceDetection:I

.field public sFaceROI:Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;


# direct methods
.method public constructor <init>(FFFFFILcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->fContrastParam:F

    iput p2, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->fUEParam:F

    iput p3, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->fOEParam:F

    iput p4, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->fGBlurFactor:F

    iput p5, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->fOFBlurFactor:F

    iput p6, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->faceDetection:I

    iput-object p7, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;->sFaceROI:Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageROIPE;

    return-void
.end method
