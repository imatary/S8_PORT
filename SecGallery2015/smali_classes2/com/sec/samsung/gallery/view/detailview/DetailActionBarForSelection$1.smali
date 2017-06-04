.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$1;
.super Ljava/lang/Object;
.source "DetailActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->initActionBarBg()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)V

    return-void
.end method
