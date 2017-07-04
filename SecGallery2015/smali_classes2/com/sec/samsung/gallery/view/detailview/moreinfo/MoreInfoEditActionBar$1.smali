.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;
.super Ljava/lang/Object;
.source "MoreInfoEditActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x106000d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
