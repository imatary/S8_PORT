.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$3;
.super Ljava/lang/Object;
.source "DetailActionBarForMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->startActionMMSSave(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->mMenu:Landroid/view/Menu;

    const v2, 0x7f1202b8

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
