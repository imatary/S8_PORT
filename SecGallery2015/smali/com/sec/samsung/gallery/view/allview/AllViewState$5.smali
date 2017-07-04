.class Lcom/sec/samsung/gallery/view/allview/AllViewState$5;
.super Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;
.source "AllViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->handleFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

.field final synthetic val$topPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;->val$topPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMediaNotEmpty()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;->val$topPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
