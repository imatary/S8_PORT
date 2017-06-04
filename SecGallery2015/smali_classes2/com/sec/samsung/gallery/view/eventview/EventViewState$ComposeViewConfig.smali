.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "EventViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mHideIconMinLevel:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mIsEventView:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mIsCardTypeView:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mMinLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mMaxLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerEventView;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    return-void
.end method
