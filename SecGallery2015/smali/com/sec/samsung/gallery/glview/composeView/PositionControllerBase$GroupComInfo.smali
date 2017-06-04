.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupComInfo"
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->mCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->mCount:I

    return v0
.end method


# virtual methods
.method public setItemCount(I)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->mCount:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->mCount:I

    goto :goto_0
.end method
