.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;
.super Landroid/os/Handler;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
