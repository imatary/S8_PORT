.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "NoItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(II)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NoItemViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NoItemViewState"

    const-string/jumbo v1, "mNeedsCrop is true. Skip startPreviousViewState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # setter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1402(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->shouldStartPreviousViewState()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startPreviousViewState()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedIdleProcess:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # setter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedIdleProcess:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2302(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getPreviousViewState()Ljava/lang/Class;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startTimeViewState()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "mtpMode"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2002(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->finishCurrentViewState()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    goto :goto_1
.end method
