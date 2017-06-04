.class public Lcom/sec/android/secphoto/jni/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field public final ps32ImgBuffer:[I

.field public final s32Height:I

.field public final s32ImgFormat:I

.field public final s32Width:I


# direct methods
.method public constructor <init>([IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/secphoto/jni/ImageInfo;->ps32ImgBuffer:[I

    iput p2, p0, Lcom/sec/android/secphoto/jni/ImageInfo;->s32Width:I

    iput p3, p0, Lcom/sec/android/secphoto/jni/ImageInfo;->s32Height:I

    iput p4, p0, Lcom/sec/android/secphoto/jni/ImageInfo;->s32ImgFormat:I

    return-void
.end method
