.class Lcom/android/providers/media/RecommendFace$FaceItem;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceItem"
.end annotation


# instance fields
.field public mFaceData:I

.field public mFaceId:I

.field public mOldScore:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/RecommendFace$FaceItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>()V

    return-void
.end method
