.class public Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerButtonInfo"
.end annotation


# instance fields
.field private mId:I

.field private mIndex:I

.field private mPackageName:Ljava/lang/String;

.field private mUse:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mId:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mId:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mUse:Z

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mId:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mIndex:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mUse:Z

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mIndex:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mUse:Z

    return-void
.end method

.method public setmId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->mId:I

    return-void
.end method
