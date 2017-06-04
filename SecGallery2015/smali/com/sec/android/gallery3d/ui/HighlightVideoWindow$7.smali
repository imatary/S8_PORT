.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showToast()V
    .locals 6

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 4

    instance-of v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3039"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->onSurfaceClick()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "HLVP"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "HighlightVideoWindow"

    const-string/jumbo v2, "Stop slideshow service. Start Highlight Video."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    # getter for: Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopPresentation(Landroid/content/Context;)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;->showToast()V

    const-string/jumbo v1, "HighlightVideoWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HighlightPlayerActivity is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
