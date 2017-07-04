.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestFullLoading()V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullAlbumLoading:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullAlbumLoading:Z

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private updateOptionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14302(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBeam:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->setBeamListener()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->enableResStroke(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->requestFullLoading()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->updateOptionMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/view/Menu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkNeedToUpdateApk(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0
.end method
