.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

.field final synthetic val$isActionbarTitle:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->val$isActionbarTitle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$300(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsMultiPickMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$400(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->val$isActionbarTitle:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle()V

    goto :goto_0
.end method
