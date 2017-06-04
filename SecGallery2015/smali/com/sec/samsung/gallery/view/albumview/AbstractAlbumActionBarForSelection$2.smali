.class Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$2;
.super Ljava/lang/Object;
.source "AbstractAlbumActionBarForSelection.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->access$100(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startSwipeAnimation()V

    :cond_0
    return-void
.end method
