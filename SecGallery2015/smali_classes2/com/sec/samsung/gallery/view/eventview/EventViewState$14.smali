.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSwitchCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    return-void
.end method

.method public onViewSwitchDone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    return-void
.end method

.method public onViewSwitchStart()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    return-void
.end method
