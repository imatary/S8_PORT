.class public Lcom/sec/android/gallery3d/data/LocalFaceImage;
.super Lcom/sec/android/gallery3d/data/LocalMediaItem;
.source "LocalFaceImage.java"


# instance fields
.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mFaceData:I

.field private mFacePath:Ljava/lang/String;

.field private mFacePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceRect:Landroid/graphics/Rect;

.field private mFileId:I

.field private mGroupId:I

.field private mKind:Ljava/lang/String;

.field private mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

.field private mLocalImagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPathHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonId:I

.field private mRecommendedId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePaths:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->initFromPath()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->loadImage()V

    return-void
.end method

.method private initFromPath()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mGroupId:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFileId:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFileId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;->FaceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private isUnNamedImage()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mGroupId:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImage()V
    .locals 6

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFileId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalImage;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getDataVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/data/LocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mimeType:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getDataVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/LocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePaths:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/LocalImage;->deleteFaceImage(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFileId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFacePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImagePath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFileId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    return-wide v0
.end method

.method public getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    return v0
.end method

.method public getRotation()I
    .locals 2

    const-string/jumbo v0, "people"

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "group"

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getRotation()I

    move-result v0

    goto :goto_0
.end method

.method public getSupportedOperations()J
    .locals 5

    const/4 v4, 0x1

    const-wide v0, 0x114020000000040dL

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    const-string/jumbo v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v0, 0x5

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlashAnnotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    const-wide v2, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->isBroken()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide v2, 0x4000002000000000L    # 2.00006103515625

    or-long/2addr v0, v2

    :cond_3
    return-wide v0

    :cond_4
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    if-le v2, v4, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    if-eq v2, v3, :cond_5

    const-wide v0, 0x1140200000000405L

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    if-le v2, v4, :cond_6

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mRecommendedId:I

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mGroupId:I

    if-nez v2, :cond_6

    const-wide v0, 0x1140200000000405L

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    if-nez v2, :cond_7

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const-wide v0, 0x1000200000000405L

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mGroupId:I

    if-nez v2, :cond_8

    const-wide v0, 0x1100200000000405L    # 8.508499878688958E-227

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->isUnNamedImage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, 0x1100200000000405L    # 8.508499878688958E-227

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v0

    return v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFaceData:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPersonId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getModifiedDateInSec()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v9, v2, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mKind:Ljava/lang/String;

    const-string/jumbo v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_1

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getModifiedDateInSec()J

    move-result-wide v6

    move/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getModifiedDateInSec()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v0, v2, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v16, p1

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;)V

    move-object v3, v11

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getModifiedDateInSec()J

    move-result-wide v6

    move/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v1, v1, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFacePaths(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mFacePaths:Ljava/util/ArrayList;

    return-void
.end method

.method public setPathMap(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImagePaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mLocalImage:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPathHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateVersion()J
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mDataVersion:J

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalFaceImage;->mDataVersion:J

    return-wide v0
.end method
