.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "ChannelPhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mUseSocialStoryView:Z

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mUseStoryRealRatioClustering:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mFirstRangeOptimization:Z

    :goto_0
    const-string/jumbo v0, "ChannelPhotoViewState"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void

    :cond_1
    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mScanAllSet:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mFirstRangeOptimization:Z

    goto :goto_0
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;->mRetThmType:B

    return p1
.end method
