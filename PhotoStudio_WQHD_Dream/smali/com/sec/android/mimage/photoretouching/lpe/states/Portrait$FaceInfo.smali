.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
.super Ljava/lang/Object;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;
    }
.end annotation


# instance fields
.field public mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

.field public mFacenum:I

.field public mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFaceInfo(I[I)V
    .locals 5

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFacenum:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFacenum:I

    new-array v3, v3, [Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFacenum:I

    new-array v3, v3, [Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFacenum:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFacenum:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v4, p2, v1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->isValid:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    aget-object v3, v3, v0

    add-int/lit8 v1, v2, 0x1

    aget v4, p2, v2

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->x:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v4, p2, v1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->y:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    aget-object v3, v3, v0

    add-int/lit8 v1, v2, 0x1

    aget v4, p2, v2

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->width:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v4, p2, v1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->height:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    aget-object v3, v3, v0

    add-int/lit8 v1, v2, 0x1

    aget v4, p2, v2

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->lx:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v4, p2, v1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->ly:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    aget-object v3, v3, v0

    add-int/lit8 v1, v2, 0x1

    aget v4, p2, v2

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->rx:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v4, p2, v1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->ry:I

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method
