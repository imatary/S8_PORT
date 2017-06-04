.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;
.super Ljava/lang/Object;
.source "DetailActionBarSkeleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateRelatedSearchMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMenu:Landroid/view/Menu;

    const v1, 0x7f12028b

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mRelatedResult:Z

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void
.end method
