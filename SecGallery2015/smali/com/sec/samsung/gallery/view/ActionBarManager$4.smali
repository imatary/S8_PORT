.class Lcom/sec/samsung/gallery/view/ActionBarManager$4;
.super Ljava/lang/Object;
.source "ActionBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/ActionBarManager;->setEnableSelectAll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/ActionBarManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$4;->this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$4;->this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

    # getter for: Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->access$100(Lcom/sec/samsung/gallery/view/ActionBarManager;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$4;->this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

    # getter for: Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->access$100(Lcom/sec/samsung/gallery/view/ActionBarManager;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$4;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setEnableSelectAll(Z)V

    goto :goto_0
.end method
