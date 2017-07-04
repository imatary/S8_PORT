.class Lcom/sec/samsung/gallery/view/ActionBarManager$1;
.super Ljava/lang/Object;
.source "ActionBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/ActionBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$1;->this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager$1;->this$0:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->access$000(Lcom/sec/samsung/gallery/view/ActionBarManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method
