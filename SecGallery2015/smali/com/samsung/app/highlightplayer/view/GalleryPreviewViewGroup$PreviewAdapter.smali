.class Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;
.super Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;
.source "GalleryPreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewAdapter"
.end annotation


# instance fields
.field private surfaceChangedDuringPlay:Z

.field final synthetic this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;


# direct methods
.method private constructor <init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-direct {p0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->surfaceChangedDuringPlay:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    return-void
.end method

.method private onSurfaceUpdate()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/4 v2, 0x0

    sget-object v4, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    int-to-float v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->refreshPreview(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;F)V

    :cond_0
    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " In onSurfaceUpdate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;
    invoke-static {v4}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->disableBGM()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    return-object v0
.end method

.method public onAudioFocusLost()V
    .locals 2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "AudioFocusLost while playback in highlight gallery preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget-object v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->paused:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    # setter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$1000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;->pause_player()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    return-void
.end method

.method public onCompleted()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Completed playback in highlight gallery preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " In onCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;
    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget-object v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->completed:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    # setter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # invokes: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->refreshPreviewForCurrentSeekBarPosition(I)V
    invoke-static {v0, v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$900(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;->onCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    return-void
.end method

.method public onError()V
    .locals 2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Error while playback in highlight gallery preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget-object v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->completed:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    # setter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$1000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;->pause_player()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;->playerError()V

    :cond_0
    return-void
.end method

.method public onPlayed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # invokes: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->updateCoverImage()V
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$600(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget-object v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->playing:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    # setter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " In OnPlayed visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;
    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;->onPlayed()V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 3

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Stopped playback in highlight gallery preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget-object v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->completed:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    # setter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$100(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;->onStopped()V

    :cond_1
    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " In onStopped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    # getter for: Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;
    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->onSurfaceUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;->surfaceChangedDuringPlay:Z

    return-void
.end method
