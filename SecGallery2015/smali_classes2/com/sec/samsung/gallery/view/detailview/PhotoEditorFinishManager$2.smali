.class Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;
.super Ljava/lang/Object;
.source "PhotoEditorFinishManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "EditorFinishManager"

    const-string/jumbo v1, "Photo Editor service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$202(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$302(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "EditorFinishManager"

    const-string/jumbo v1, "Photo Editor service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$202(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$302(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Z)Z

    return-void
.end method
