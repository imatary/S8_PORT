.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;
.super Ljava/lang/Object;
.source "ChannelPhotoViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mChannelPhotoViewState:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

.field private mFadeAnimation:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

.field private final mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

.field private final mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mChannelPhotoViewState:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mChannelPhotoViewState:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method


# virtual methods
.method public setEnvGLViewInitialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mChannelPhotoViewState:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V

    return-void
.end method

.method public setonEvtResume()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

    return-void
.end method
