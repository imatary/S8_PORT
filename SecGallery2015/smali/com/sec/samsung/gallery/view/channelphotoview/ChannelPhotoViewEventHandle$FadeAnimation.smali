.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "ChannelPhotoViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimation"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final FADE_IN:I = 0x0

.field private static final FADE_OUT:I = 0x1


# instance fields
.field private mAinmType:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->mAinmType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->mAinmType:I

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->processActionBarVI(F)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->setDuration(J)V

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setAnimationType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->mAinmType:I

    return-void
.end method
