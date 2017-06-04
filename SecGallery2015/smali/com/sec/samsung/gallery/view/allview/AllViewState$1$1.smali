.class Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/allview/AllViewState$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;->this$1:Lcom/sec/samsung/gallery/view/allview/AllViewState$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;->this$1:Lcom/sec/samsung/gallery/view/allview/AllViewState$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;->this$1:Lcom/sec/samsung/gallery/view/allview/AllViewState$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method
