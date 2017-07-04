.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;
.super Ljava/lang/Object;
.source "GlComposeAlbumView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpSideAlbumStatus(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_NOT_REORDER:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;->onStatusChange(III)V

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnExtendListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;->onExtendRequest(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z

    return-void
.end method
