.class Lcom/sec/android/app/ve/preview/ProjectPreview2$1;
.super Ljava/lang/Object;
.source "ProjectPreview2.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/preview/ProjectPreview2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PVG::surface surfaceChanged, Width, Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", view width, height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and callback width and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->clearStoryBoardBitmapFetcher()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$902(Lcom/sec/android/app/ve/preview/ProjectPreview2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$900(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1202(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->isExportRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setEngineSurface()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$600(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$602(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J
    invoke-static {v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$500(Lcom/sec/android/app/ve/preview/ProjectPreview2;)J

    move-result-wide v2

    # invokes: Lcom/sec/android/app/ve/preview/ProjectPreview2;->_play(J)V
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1300(Lcom/sec/android/app/ve/preview/ProjectPreview2;J)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onSurfaceChanged()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PVG::surface surfaceCreated, Width, Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$902(Lcom/sec/android/app/ve/preview/ProjectPreview2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$900(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->isExportRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setEngineSurface()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1100(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "PLAYER_STATE"

    const-string/jumbo v1, "Covered up the preview on SurfaceCreated"

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$1102(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string/jumbo v1, "PLAYER_STATE"

    const-string/jumbo v2, "PVG::surface destroyed"

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$402(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/app/video/editor/external/VideoEditor;->getInstance(Landroid/content/res/AssetManager;Landroid/content/Context;)Lcom/samsung/app/video/editor/external/VideoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v2

    int-to-long v2, v2

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$502(Lcom/sec/android/app/ve/preview/ProjectPreview2;J)J

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$602(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # invokes: Lcom/sec/android/app/ve/preview/ProjectPreview2;->_stop()V
    invoke-static {v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$700(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->releaseSurface()V

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    # getter for: Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I
    invoke-static {v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$800(Lcom/sec/android/app/ve/preview/ProjectPreview2;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v1, v1, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v1, v1, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onStopped()V

    :cond_1
    return-void
.end method
