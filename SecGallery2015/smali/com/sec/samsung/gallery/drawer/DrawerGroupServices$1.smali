.class Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;
.super Landroid/os/Handler;
.source "DrawerGroupServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->access$000(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Lcom/sec/samsung/gallery/core/ViewByFilterType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->access$200(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
