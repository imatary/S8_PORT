.class Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;
.super Landroid/os/Handler;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$5;->$SwitchMap$com$sec$samsung$gallery$controller$PostGalleryCmd$PostGalleryCmdType:[I

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->enumType:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->create(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$300(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/app/Activity;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->resume(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$400(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
