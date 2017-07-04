.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;
.super Ljava/lang/Object;
.source "MoreInfoEditActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;I)V

    return-void
.end method
