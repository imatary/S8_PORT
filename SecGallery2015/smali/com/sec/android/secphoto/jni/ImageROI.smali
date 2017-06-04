.class public Lcom/sec/android/secphoto/jni/ImageROI;
.super Ljava/lang/Object;
.source "ImageROI.java"


# instance fields
.field public final s32Bottom:I

.field public final s32Left:I

.field public final s32Right:I

.field public final s32Top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Left:I

    iput p2, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Top:I

    iput p3, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Right:I

    iput p4, p0, Lcom/sec/android/secphoto/jni/ImageROI;->s32Bottom:I

    return-void
.end method
