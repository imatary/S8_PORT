.class public Lcom/samsung/android/saiv/face/FaceDetection;
.super Ljava/lang/Object;
.source "FaceDetection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_FaceDection"

.field private static detectionInstance:Lcom/samsung/android/saiv/face/FaceDetection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/saiv/face/FaceDetection;->detectionInstance:Lcom/samsung/android/saiv/face/FaceDetection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/saiv/face/FaceDetection;
    .locals 2

    sget-object v0, Lcom/samsung/android/saiv/face/FaceDetection;->detectionInstance:Lcom/samsung/android/saiv/face/FaceDetection;

    if-nez v0, :cond_0

    const-string v0, "PEDIT_FaceDection"

    const-string v1, "create new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/saiv/face/FaceDetection;

    invoke-direct {v0}, Lcom/samsung/android/saiv/face/FaceDetection;-><init>()V

    sput-object v0, Lcom/samsung/android/saiv/face/FaceDetection;->detectionInstance:Lcom/samsung/android/saiv/face/FaceDetection;

    :cond_0
    sget-object v0, Lcom/samsung/android/saiv/face/FaceDetection;->detectionInstance:Lcom/samsung/android/saiv/face/FaceDetection;

    return-object v0
.end method


# virtual methods
.method public findFace(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/saiv/face/Face;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v1, v1, p1, p2}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedDetectionFindFace([BIILandroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public findFace([BIILjava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/saiv/face/Face;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p4}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedDetectionFindFace([BIILandroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method
