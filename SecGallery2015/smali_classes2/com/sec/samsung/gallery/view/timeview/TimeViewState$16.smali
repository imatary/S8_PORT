.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSwitchCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    return-void
.end method

.method public onViewSwitchDone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_0
    return-void
.end method

.method public onViewSwitchStart()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    return-void
.end method
