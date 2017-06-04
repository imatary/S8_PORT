.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isInitialActivityLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFromNoItemView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFromNoItemView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->refreshDualScreenFocus()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # setter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsDualLaunchFromDetail:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1502(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # setter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1102(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # setter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1202(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsDualLaunchFromDetail:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IIZ)V

    :cond_3
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->refreshDualScreenFocus()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
