.class Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;
.super Landroid/os/Handler;
.source "DrawerGroupDefaultExpansion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->setGroupUpdateHandler()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$200(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$600(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$300(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$400(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$500(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v3

    or-int v0, v2, v3

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$200(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$300(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$400(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$500(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z

    move-result v3

    or-int v0, v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
