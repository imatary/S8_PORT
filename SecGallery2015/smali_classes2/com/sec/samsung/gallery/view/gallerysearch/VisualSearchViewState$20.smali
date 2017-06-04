.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearExpandObjFocus()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->removeBorderFromSearchFaceObj()V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$10600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionFocus()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$10700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$10900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$10800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionTitleFocus()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionTitleFocus(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/Object;I)V

    goto :goto_0
.end method
