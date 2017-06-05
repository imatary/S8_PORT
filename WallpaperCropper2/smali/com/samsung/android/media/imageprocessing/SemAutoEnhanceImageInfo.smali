.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public ps32ImgBuffer:[B

.field public s32Height:I

.field public s32ImgFormat:I

.field public s32Width:I

.field public sRotation:I

.field public s_X:I

.field public s_Y:I


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->ps32ImgBuffer:[B

    iput p2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->s32Width:I

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->s32Height:I

    iput p4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->s_X:I

    iput p5, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->s_Y:I

    iput p6, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->s32ImgFormat:I

    iput p7, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;->sRotation:I

    return-void
.end method
