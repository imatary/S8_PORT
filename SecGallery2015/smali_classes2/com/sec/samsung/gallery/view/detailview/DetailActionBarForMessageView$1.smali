.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$1;
.super Ljava/lang/Object;
.source "DetailActionBarForMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForMessageView;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
