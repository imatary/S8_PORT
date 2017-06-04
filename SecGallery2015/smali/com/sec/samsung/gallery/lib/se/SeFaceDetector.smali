.class public Lcom/sec/samsung/gallery/lib/se/SeFaceDetector;
.super Ljava/lang/Object;
.source "SeFaceDetector.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/FaceDetectorInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFaceRect(Landroid/graphics/Bitmap;[I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v0}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, p2, v4

    const/4 v3, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, p2, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, p2, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, p2, v3

    :cond_0
    return-void
.end method
