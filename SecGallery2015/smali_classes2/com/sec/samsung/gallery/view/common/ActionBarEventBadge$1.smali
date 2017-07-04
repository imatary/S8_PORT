.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;
.super Landroid/os/Handler;
.source "ActionBarEventBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f0a03cb

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$100(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$200(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
