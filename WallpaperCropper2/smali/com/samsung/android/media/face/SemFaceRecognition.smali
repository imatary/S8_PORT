.class public Lcom/samsung/android/media/face/SemFaceRecognition;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceRecognition$Cluster;,
        Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceRecognition"

.field private static sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;


# instance fields
.field private mFace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLandmark:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/media/face/SemFaceRecognition;
    .locals 2

    sget-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    return-object v0

    :cond_0
    const-string/jumbo v0, "SemFaceRecognition"

    const-string/jumbo v1, "create new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/face/SemFaceRecognition;

    invoke-direct {v0}, Lcom/samsung/android/media/face/SemFaceRecognition;-><init>()V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    goto :goto_0
.end method


# virtual methods
.method public compareFeature(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCompareFeature(III)I

    move-result v0

    return v0
.end method

.method public compareFeature(I[I[I)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCompareFeatures(I[I[I)I

    move-result v0

    return v0
.end method

.method public create()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCreate()I

    move-result v0

    return v0
.end method

.method public doClustering()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionDoClustering()I

    move-result v0

    return v0
.end method

.method public extractFaceFeature(II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, v0, p2}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionExtractFeature(Landroid/graphics/Rect;[Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public findFace(Landroid/graphics/Bitmap;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public findFace([BII)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput p2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    iput p3, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindFace([BII)I

    move-result v0

    return v0
.end method

.method public getClusteringInfo()Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionGetClusterInfo()Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFacePose(I)I
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionGetFacePose(I)I

    move-result v0

    return v0
.end method

.method public getFaceRect(II)Landroid/graphics/Rect;
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionGetFaceRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindLandmark(Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    iget v3, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    invoke-direct {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public initFD()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionCreate()I

    move-result v0

    return v0
.end method

.method public loadClusterData(Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionLoadClusterData(Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;)V

    return-void
.end method

.method public loadFaceFeature(I)I
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionLoadFeature(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionDestroy()I

    return-void
.end method

.method public releaseFD()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionDestroy()V

    return-void
.end method

.method public saveFace(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionSaveFace(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setFaceDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionSetFaceDir(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setThumbnailSize(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionSetThumbnailSize(I)V

    return-void
.end method
