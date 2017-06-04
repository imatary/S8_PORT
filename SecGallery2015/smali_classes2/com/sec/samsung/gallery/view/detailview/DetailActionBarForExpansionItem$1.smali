.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$1;
.super Ljava/lang/Object;
.source "DetailActionBarForExpansionItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->initActionBarBg()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V

    return-void
.end method
