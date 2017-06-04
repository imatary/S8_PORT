.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getGenericMotionTitleFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateTitleBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionTitleFocus(I)V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 6

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getGenericMotionTitleFocus()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateTitleBorder(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getGenericMotionFocus()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateBorder(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getGenericMotionFocusTitleButton2()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateTitleButton2(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getGenericMotionFocusTitleButton1()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateTitleButton1(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionFocusTitleButton2(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionFocusTitleButton1(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$3400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getEventAlbumTimeInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
