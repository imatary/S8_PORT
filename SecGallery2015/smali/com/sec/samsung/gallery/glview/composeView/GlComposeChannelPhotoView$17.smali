.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;
.super Ljava/lang/Object;
.source "GlComposeChannelPhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field final synthetic val$objectType:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->val$objectType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 11

    const v10, 0x7f0a0405

    const v7, 0x7f0a041c

    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionFocus()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateBorder(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionTitleFocus()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateTitleBorder(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionLocationFocus()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateLocationBorder(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionFocus(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionLocationFocus(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v4, 0x10000

    invoke-virtual {v0, v2, v4}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v9

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getFocusExpandObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "GlComposeChannPhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImageOnGenericMotionEnter: currentFocusExpandObj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderWidth(F)V

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    const-string/jumbo v3, ""

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->val$objectType:I

    packed-switch v4, :pswitch_data_0

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v4, v3}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v5, 0x7f100111

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    goto :goto_1

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a009c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a002c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getCancelButtonText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a03cf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a01ea

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0454

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a017b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0423

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method
