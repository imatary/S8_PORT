.class public Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;
.super Landroid/widget/RelativeLayout;
.source "GalleryPreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;,
        Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;,
        Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;,
        Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;,
        Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

.field private mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

.field private mGestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

.field private mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

.field private mPreviewHeight:I

.field private mPreviewListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

.field private mPreviewPlayImageView:Landroid/widget/ImageView;

.field private mPreviewWidth:I

.field private playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

.field private previewHiderImgView:Landroid/widget/ImageView;

.field private wasPlayingBeforeProgressTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewHeight:I

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iput-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewHeight:I

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iput-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

    new-instance v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mGestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->previewHiderImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->updateCoverImage()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->refreshPreviewForCurrentSeekBarPosition(I)V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->initialized:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPlayerState:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    sget v0, Lcom/samsung/app/highlightplayer/R$id;->previewlayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/PreviewPlayerInterface;

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PreviewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->setAdapter(Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->setAutoFocusable(Z)V

    sget v0, Lcom/samsung/app/highlightplayer/R$id;->previewplayBtn:I

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    sget v0, Lcom/samsung/app/highlightplayer/R$id;->surfaceHiderImgView:I

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->previewHiderImgView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayButtonVisibility(I)V

    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Visibility In init = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

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

.method private refreshPreviewForCurrentSeekBarPosition(I)V
    .locals 12

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move v11, p1

    const/4 v2, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x1

    :goto_0
    if-ge v10, v6, :cond_0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v4

    sub-int v9, v3, v4

    if-gt v9, v11, :cond_4

    sub-int/2addr v11, v9

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    if-ge v11, v3, :cond_3

    move-object v2, v7

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v0

    :cond_1
    add-int v3, v0, v11

    sget-object v4, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    int-to-float v5, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->refreshPreview(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;F)V

    :cond_2
    return-void

    :cond_3
    move-object v1, v7

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v3

    sub-int/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateCoverImage()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$3;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$3;-><init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->previewHiderImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public disableBGM()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    :cond_0
    return-void
.end method

.method public disablePlayButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public enablePlayButton()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/app/highlightplayer/R$string;->highlight_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getPreviewSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_width:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_height:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v1, :cond_1

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->init()V

    return-void
.end method

.method public pause_player()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;->pause_player()V

    return-void
.end method

.method public refreshPreview(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;F)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->update(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setActionBar(Landroid/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method public setAudioFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreview:Lcom/sec/android/app/ve/PreviewPlayerInterface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->setAudioFocusable(Z)V

    :cond_0
    return-void
.end method

.method public setCoverImage(I)V
    .locals 5

    new-instance v2, Lcom/samsung/app/highlightplayer/HighLightMediaHelper;

    invoke-direct {v2}, Lcom/samsung/app/highlightplayer/HighLightMediaHelper;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/app/highlightplayer/HighLightMediaHelper;->getBitmapFromMediaId(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setCoverImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    invoke-interface {v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;->stop_play()V

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isValidCloudFile()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "HighlightVideoAnalyser"

    const-string/jumbo v4, " Cloud file deleted in gallery preview "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->previewHiderImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->previewHiderImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setGestureControl(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mGestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    return-void
.end method

.method public setPlayButtonVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->wasPlayingBeforeProgressTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->enablePlayButton()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->disablePlayButton()V

    goto :goto_0
.end method

.method public setPlayerControl(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewWidth:I

    iput p2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mPreviewHeight:I

    return-void
.end method

.method public setTranscodeElement(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mCurrTransElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-void
.end method

.method public start_play()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->mFSListener:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;->start_play()I

    move-result v0

    return v0
.end method
