.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$1;
.super Ljava/lang/Object;
.source "DetailActionBarForQCViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
