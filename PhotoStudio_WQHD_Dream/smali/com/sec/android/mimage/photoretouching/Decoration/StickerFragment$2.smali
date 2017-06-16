.class Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;
.super Landroid/os/Handler;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->initLocation(Landroid/location/Location;Lcom/android/volley/RequestQueue;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->initWeather(Landroid/location/Location;Lcom/android/volley/RequestQueue;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc81
        :pswitch_0
    .end packed-switch
.end method
