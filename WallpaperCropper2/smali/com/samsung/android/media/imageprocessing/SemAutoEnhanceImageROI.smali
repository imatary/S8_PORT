.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public s32Bottom:I

.field public s32Left:I

.field public s32Right:I

.field public s32Top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Left:I

    iput p2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Top:I

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Right:I

    iput p4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;->s32Bottom:I

    return-void
.end method
