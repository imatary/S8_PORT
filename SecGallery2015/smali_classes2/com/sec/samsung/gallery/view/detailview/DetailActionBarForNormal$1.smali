.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$1;
.super Ljava/lang/Object;
.source "DetailActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
