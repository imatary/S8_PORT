.class public Lcom/sec/android/gallery3d/data/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field private final mAutoGroup:I

.field private final mFaceGroupId:I

.field private final mFaceId:I

.field private final mFacePath:Ljava/lang/String;

.field private final mFaceRect:Landroid/graphics/Rect;

.field private final mPersonId:Ljava/lang/String;

.field private mRecommendedId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILandroid/graphics/Rect;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceId:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/data/Face;->mRecommendedId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;->FaceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/Face;->mFacePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceRect:Landroid/graphics/Rect;

    iput p6, p0, Lcom/sec/android/gallery3d/data/Face;->mAutoGroup:I

    iput p7, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceGroupId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/Face;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/Face;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoGroup()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/Face;->mAutoGroup:I

    return v0
.end method

.method public getFaceGroupId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceGroupId:I

    return v0
.end method

.method public getFaceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceId:I

    return v0
.end method

.method public getFacePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Face;->mFacePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Face;->mFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/Face;->mRecommendedId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setRecommendedId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/Face;->mRecommendedId:I

    return-void
.end method
