.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$previousViewState:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->this$1:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->val$previousViewState:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->this$1:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->val$previousViewState:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
