.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailViewInUIThread(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

.field final synthetic val$albumIndex:I

.field final synthetic val$changeScreen:Z

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$albumIndex:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$itemIndex:I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$albumIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$itemIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$albumIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$itemIndex:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->val$changeScreen:Z

    invoke-static {v1, v2, v3, v0, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/data/MediaItem;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v1
.end method
