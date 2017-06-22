.class public Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;
.super Ljava/lang/Object;
.source "SemAutoEnhanceImageInfoPE.java"


# instance fields
.field public colorFormat:I

.field public height:I

.field public imgBuffer:[B

.field public orientation:I

.field public width:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;->imgBuffer:[B

    iput p2, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;->width:I

    iput p3, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;->height:I

    iput p4, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;->orientation:I

    iput p5, p0, Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;->colorFormat:I

    return-void
.end method
