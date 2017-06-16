.class public Lcom/samsung/android/saiv/face/FaceLandmark;
.super Ljava/lang/Object;
.source "FaceLandmark.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_FaceLandmark"

.field private static landmarkInstance:Lcom/samsung/android/saiv/face/FaceLandmark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/saiv/face/FaceLandmark;->landmarkInstance:Lcom/samsung/android/saiv/face/FaceLandmark;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/saiv/face/FaceLandmark;
    .locals 2

    sget-object v0, Lcom/samsung/android/saiv/face/FaceLandmark;->landmarkInstance:Lcom/samsung/android/saiv/face/FaceLandmark;

    if-nez v0, :cond_0

    const-string v0, "PEDIT_FaceLandmark"

    const-string v1, "create new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/saiv/face/FaceLandmark;

    invoke-direct {v0}, Lcom/samsung/android/saiv/face/FaceLandmark;-><init>()V

    sput-object v0, Lcom/samsung/android/saiv/face/FaceLandmark;->landmarkInstance:Lcom/samsung/android/saiv/face/FaceLandmark;

    :cond_0
    sget-object v0, Lcom/samsung/android/saiv/face/FaceLandmark;->landmarkInstance:Lcom/samsung/android/saiv/face/FaceLandmark;

    return-object v0
.end method


# virtual methods
.method public findEye([BIILandroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedLandmarkFindEye([BIILcom/samsung/android/saiv/face/Face;Landroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public findEye([BIILcom/samsung/android/saiv/face/Face;)[Landroid/graphics/Point;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedLandmarkFindEye([BIILcom/samsung/android/saiv/face/Face;Landroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public findEye4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedLandmarkFindEye([BIILcom/samsung/android/saiv/face/Face;Landroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public findEye4Orientation([BIILcom/samsung/android/saiv/face/Face;I)[Landroid/graphics/Point;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->synchronizedLandmarkFindEye([BIILcom/samsung/android/saiv/face/Face;Landroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
