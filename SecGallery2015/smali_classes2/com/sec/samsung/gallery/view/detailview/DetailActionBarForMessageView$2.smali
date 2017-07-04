.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;
.super Ljava/lang/Object;
.source "DetailActionBarForMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

.field final synthetic val$saveItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;->val$saveItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$2;->val$saveItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;Landroid/view/MenuItem;)V

    return-void
.end method
