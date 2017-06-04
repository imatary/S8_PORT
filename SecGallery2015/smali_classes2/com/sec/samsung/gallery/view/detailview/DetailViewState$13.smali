.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setModel(Lcom/sec/samsung/gallery/view/detailview/Model;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsMenuVisible:Z
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBarsForAShortTime()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    return-void
.end method
