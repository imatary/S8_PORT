.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mHideIconMinLevel:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mIsEventView:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mIsCardTypeView:Z

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mIncludeTabView:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mMinLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mMaxLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mTopGroupTitle:Z

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;

    aput-object v1, v0, v2

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mTabPos:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoEventType:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoMediaItem:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
