.class public Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;
.super Ljava/lang/Object;
.source "QuramUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectButtonInfo"
.end annotation


# instance fields
.field private mId:I

.field private mIndex:I

.field private mUse:Z


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mIndex:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mId:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mIndex:I

    if-lez p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    goto :goto_0
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mId:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mIndex:I

    iput-boolean p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mId:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mIndex:I

    return v0
.end method

.method public getUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;->mUse:Z

    return v0
.end method
