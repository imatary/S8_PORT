.class public Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
.super Ljava/lang/Object;
.source "HighlightPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;,
        Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$SummaryDetails;,
        Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;,
        Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;
    }
.end annotation


# instance fields
.field private activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

.field private gestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

.field private isCreated:Z

.field listener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentEventId:I

.field private mCurrentVersion:Ljava/lang/String;

.field private mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

.field private mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

.field private playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

.field private playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

.field private titleTxtView:Landroid/widget/TextView;

.field private updateListener:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "2.1.07"

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mCurrentVersion:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->updateListener:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    iput-boolean v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->isCreated:Z

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    new-instance v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;-><init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->gestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    new-instance v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;-><init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->listener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    new-instance v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$3;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$3;-><init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    new-instance v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;-><init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    const-string/jumbo v1, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gallery call: Version for preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/ve/VEApp;->setGlobalApplicationContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    invoke-interface {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;->onActivityCreated()V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/app/highlightplayer/R$layout;->gallery_preview_layout:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->gestureControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    invoke-virtual {v1, v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setGestureControl(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerControl:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;

    invoke-virtual {v1, v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayerControl(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setAudioFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v1, v4}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->setEnabledAll(Landroid/view/View;Z)V

    const-string/jumbo v1, "HighlightVideoAnalyser"

    const-string/jumbo v2, "Gallery call: Inflated and initialised the components"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mCurrentEventId:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->updateListener:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->isCreated:Z

    return p1
.end method

.method private querySummaryDetails(Ljava/lang/String;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$SummaryDetails;
    .locals 9

    const/4 v0, 0x0

    new-instance v7, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$SummaryDetails;

    invoke-direct {v7, p0, v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$SummaryDetails;-><init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;)V

    const/4 v6, 0x0

    const-string/jumbo v0, "content://com.samsung.cmh/story"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "story_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "mime_type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "creation_time"

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "story_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v3, "Opening CMH cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$SummaryDetails;->title:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v3, "Closing CMH cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v3, "Closing CMH cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v7

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v3, "Closing CMH cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    const-string/jumbo v3, "HighlightVideoAnalyser"

    const-string/jumbo v4, "Closing CMH cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private setCoverImage(I)V
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MediaId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "StartTime"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "EndTime"

    aput-object v4, v2, v3

    const-string/jumbo v3, "SummaryId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "MediaId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setCoverImage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setEnabledAll(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->setEnabledAll(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disableBGM()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Disabling the BGM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v3

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

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    :cond_0
    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Disabling the BGM complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBGM()V
    .locals 6

    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Enabling the BGM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    if-eqz v1, :cond_0

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    :cond_0
    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Enabling the BGM complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPreviewLayout(I)Landroid/widget/RelativeLayout;
    .locals 3

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Building the event, and returning layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mCurrentEventId:I

    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating event for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->listener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;-><init>(Landroid/content/Context;Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->appInit()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mHighlightWorkerFragment:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->prepareNewEvent(ZI)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->disableBGM()V

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Returning layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    return-object v0
.end method

.method public getPreviewSurfaceView()Landroid/view/SurfaceView;
    .locals 2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Sending the surface to gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->getPreviewSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Checking whether HLV is playing or not"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceClick()V
    .locals 7

    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Launching explicit HLV player"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v4

    int-to-long v0, v4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "eventid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mCurrentEventId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "currentSeekPosition"

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.app.highlightplayer"

    const-string/jumbo v5, "com.samsung.app.highlightplayer.activity.HighlightPlayerActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "HJH"

    const-string/jumbo v5, "no edit activity in onsurface"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.app.highlightplayer"

    const-string/jumbo v5, "com.samsung.app.highlightplayer.activity.HighlightPlayerActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string/jumbo v4, "HighlightVideoAnalyser"

    const-string/jumbo v5, "Gallery call: Inflated and initialised the components"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseHighlightEvent()V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gallery call: Pause event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    sget-object v2, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PLAY:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->isPreviewPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->pause_player()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    invoke-interface {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;->onActivityPaused()V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    invoke-interface {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;->onActivityDestroyed()V

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const-string/jumbo v1, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gallery call: Pause event complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Highlight player is already paused"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public playHighlightEvent()V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gallery call: Play event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    sget-object v2, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->isPreviewPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->isCreated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    invoke-interface {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;->onActivityCreated()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->activityLifeCycleHandler:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;

    invoke-interface {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;->onActivityResumed()V

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->start_play()I

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PLAY:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    iput-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playerState:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const-string/jumbo v1, "HighlightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gallery call: Play event complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Highlight player is already playing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renameEventTitle(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Renaming the title"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->titleTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->titleTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Renaming the title complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string/jumbo v0, "HighlightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Gallery call: Setting cover image with size of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setCoverImage(Landroid/graphics/Bitmap;)V

    :cond_0
    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Setting cover image complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Gallery call: Cover image is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 8

    const-string/jumbo v5, "HighlightVideoAnalyser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Gallery call: Setting preview size to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget v6, Lcom/samsung/app/highlightplayer/R$id;->previewlayout:I

    invoke-virtual {v5, v6}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPreviewSize(II)V

    iget-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget v6, Lcom/samsung/app/highlightplayer/R$id;->surfaceHiderImgView:I

    invoke-virtual {v5, v6}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string/jumbo v5, "HighlightVideoAnalyser"

    const-string/jumbo v6, "Gallery call: Setting preview size complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isGraceProject()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    sget v6, Lcom/samsung/app/highlightplayer/R$id;->previewplayBtn:I

    invoke-virtual {v5, v6}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/samsung/app/highlightplayer/R$dimen;->simple_preview_play_btn_size:I

    invoke-static {v5}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v5, Lcom/samsung/app/highlightplayer/R$dimen;->simple_preview_play_btn_size:I

    invoke-static {v5}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTranscodeElementUpdateListener(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->updateListener:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    return-void
.end method

.method public setmPlayerControls(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mPreviewViewGroup:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setPlayerControl(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;)V

    :cond_0
    return-void
.end method
