.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupInfo"
.end annotation


# instance fields
.field mBorderH:F

.field mBorderW:F

.field mBorderX:F

.field mBorderY:F

.field mCol:I

.field mCount:I

.field mCx:[F

.field mCy:[F

.field mItemH:[F

.field mItemHG:F

.field mItemW:[F

.field mMargineLeft:F

.field mRow:I

.field mScrlAccu:F

.field mScrlAmount:F

.field mTitleCx:F

.field mTitleCy:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->setItemCount(I)V

    return-void
.end method

.method private setItemCount(I)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    :cond_0
    return-void
.end method
