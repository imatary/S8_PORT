.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$3;
.super Ljava/lang/Object;
.source "MoreInfoActionBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    return-void
.end method
