.class Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$1;
.super Landroid/os/Handler;
.source "MapViewDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
