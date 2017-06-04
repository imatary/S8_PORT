.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionFocus()I

    move-result v5

    invoke-virtual {v2, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionTitleFocus()I

    move-result v5

    invoke-virtual {v2, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionFocus(I)V

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b0046

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderWidth(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setFocusedTimeLinObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getFocusedSuggestionCardObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "GlComposeView"

    const-string/jumbo v5, "GlGenericMotionListener: SuggestionCard border removed"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setFocusedSuggestionCardObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a018f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move v2, v4

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v5, 0x7f100111

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    goto/16 :goto_1
.end method
