.class Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "MultiDirectionSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
