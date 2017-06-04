.class Lcom/sec/samsung/gallery/view/allview/AllViewState$13;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearExpandObjFocus()V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 5

    const-string/jumbo v1, "AllViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGenericMotionEnter() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getGenericMotionFocus()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/Object;I)V

    goto :goto_0
.end method
