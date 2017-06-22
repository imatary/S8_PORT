.class public Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;
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
.method public constructor <init>(IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mId:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mUse:Z

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mId:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mIndex:I

    return v0
.end method

.method public getUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mUse:Z

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mIndex:I

    return-void
.end method

.method public setUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mUse:Z

    return-void
.end method

.method public setmId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->mId:I

    return-void
.end method
