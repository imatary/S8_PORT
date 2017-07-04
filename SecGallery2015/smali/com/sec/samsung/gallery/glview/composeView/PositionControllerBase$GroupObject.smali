.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupObject"
.end annotation


# instance fields
.field mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

.field private mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mIndex:I

.field public mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private setChecked:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 6

    const/4 v5, 0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setChecked:Z

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableResizeAnim(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAlphaAnim(Z)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setBorderWidth(F)V

    const v0, -0xd0752b

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setBorderColor(I)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPostDraw(Z)V

    iget-boolean v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupTitle:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p2, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    :cond_0
    iget-boolean v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupSelect:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2, v4, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(ZFFZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p2, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    :cond_2
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->add(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSelected(Z)V

    return-void
.end method

.method private add(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 1

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private setSelected(Z)V
    .locals 5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setChecked:Z

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setChecked:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I

    return v0
.end method

.method remove(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I

    return-void
.end method
