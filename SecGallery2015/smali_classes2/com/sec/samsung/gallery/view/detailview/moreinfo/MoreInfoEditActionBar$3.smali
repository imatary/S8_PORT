.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;
.super Ljava/lang/Object;
.source "MoreInfoEditActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->updateLayout()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V

    :cond_0
    return-void
.end method
