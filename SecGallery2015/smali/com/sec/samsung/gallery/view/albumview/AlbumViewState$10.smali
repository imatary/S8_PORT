.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateAlbumBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNotificationBorder()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionFocus(I)V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateAlbumBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionFocus(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/Object;I)V

    goto :goto_0
.end method
