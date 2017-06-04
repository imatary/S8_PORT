.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateAlbumBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNotificationBorder()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->drawFocusBorder(Z)V

    :cond_0
    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateAlbumBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->drawFocusBorder(Z)V

    goto :goto_0
.end method
