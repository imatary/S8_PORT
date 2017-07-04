.class Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;
.super Landroid/os/Handler;
.source "PhotoEditorFinishManager.java"


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "EditorFinishManager"

    const-string/jumbo v2, "BIND_PHOTO_EDITOR_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$000(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Z)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "EditorFinishManager"

    const-string/jumbo v2, "UNBIND_PHOTO_EDITOR_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$100(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "EditorFinishManager"

    const-string/jumbo v2, "HIDE_PHOTO_EDITOR_IMAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$200(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->access$200(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-interface {v1, v2}, Lcom/sec/android/mimage/photoretouching/service/IFinishService;->hideImage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EditorFinishManager"

    const-string/jumbo v2, "failed to hide photo editor service view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
