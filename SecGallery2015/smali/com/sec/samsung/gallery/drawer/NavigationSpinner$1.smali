.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;
.super Landroid/os/Handler;
.source "NavigationSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$000(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$100(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$200(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
