.class Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;
.super Ljava/lang/Object;
.source "GlTimeLineSplit.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$502(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$500(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$500(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$500(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionFocus()I

    move-result v6

    invoke-virtual {v3, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionTitleFocus()I

    move-result v6

    invoke-virtual {v3, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionLocationFocus()I

    move-result v6

    invoke-virtual {v3, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateLocationBorder(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionFocus(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionLocationFocus(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFocusExpandObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_2
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderWidth(F)V

    instance-of v3, p1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0a0445

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$502(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move v3, v5

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100111

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    goto :goto_1
.end method
