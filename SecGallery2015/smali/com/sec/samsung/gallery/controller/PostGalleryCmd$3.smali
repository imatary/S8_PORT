.class Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;
.super Landroid/database/ContentObserver;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "DCM mCategoryContentObserver onChange"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    const-string/jumbo v4, "UPDATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "drawer DCM mCategoryContentObserver onChange UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$800(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "UPDATE_CATEGORY"

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/TabTagType;->getIndex()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/core/TabTagType;->getIndex()I

    move-result v5

    if-lt v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/TabTagType;->getIndex()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/core/TabTagType;->getIndex()I

    move-result v5

    if-gt v4, v5, :cond_3

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_3

    :cond_1
    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "UPDATE_SCREEN_CAHNGE_CATEGORY : CATEGORY "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_4

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "DCM onChange onDirty : CLUSTER_BY_FACE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDirty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCategoryContentObserver can\'t update images: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_5

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "UPDATE_SCREEN_CAHNGE_CATEGORY : CATEGORY, FACE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDirty()V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_2

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "PostGalleryCmd"

    const-string/jumbo v5, "UPDATE_SCREEN_CAHNGE_CHANNE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDirty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
