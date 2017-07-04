.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$2;
.super Ljava/lang/Object;
.source "MoreInfoEditActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;I)V

    return-void
.end method
