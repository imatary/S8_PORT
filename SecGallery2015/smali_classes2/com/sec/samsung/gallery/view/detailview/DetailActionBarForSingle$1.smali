.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle$1;
.super Ljava/lang/Object;
.source "DetailActionBarForSingle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDetailsDialog(Z)V

    return-void
.end method
