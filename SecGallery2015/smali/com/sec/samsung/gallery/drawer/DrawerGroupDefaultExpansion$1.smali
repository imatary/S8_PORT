.class Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;
.super Landroid/os/Handler;
.source "DrawerGroupDefaultExpansion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "DrwerGrpDfaultExpansion"

    const-string/jumbo v2, "MSG_ADD_NOTIFY_DATA_SET_CHANGED"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    # invokes: Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionItem()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$000(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    iget-object v1, v1, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/drawer/IDrawerCallback;->onUpdate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
