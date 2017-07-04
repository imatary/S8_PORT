.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startNearbyViewState(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

.field final synthetic val$deviceInfo:[Ljava/lang/String;

.field final synthetic val$nearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->val$nearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->val$deviceInfo:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->val$nearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->val$deviceInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;->val$deviceInfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->showDeviceRemovedDialog(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
