.class public Lcom/sec/android/secphoto/jni/Params;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field public final fContrastParam:F

.field public final fGBlurFactor:F

.field public final fOEParam:F

.field public final fOFBlurFactor:F

.field public final fUEParam:F

.field public final sFaceROI:Lcom/sec/android/secphoto/jni/ImageROI;


# direct methods
.method public constructor <init>(FFFFFLcom/sec/android/secphoto/jni/ImageROI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/secphoto/jni/Params;->fContrastParam:F

    iput p2, p0, Lcom/sec/android/secphoto/jni/Params;->fUEParam:F

    iput p3, p0, Lcom/sec/android/secphoto/jni/Params;->fOEParam:F

    iput p4, p0, Lcom/sec/android/secphoto/jni/Params;->fGBlurFactor:F

    iput p5, p0, Lcom/sec/android/secphoto/jni/Params;->fOFBlurFactor:F

    iput-object p6, p0, Lcom/sec/android/secphoto/jni/Params;->sFaceROI:Lcom/sec/android/secphoto/jni/ImageROI;

    return-void
.end method
