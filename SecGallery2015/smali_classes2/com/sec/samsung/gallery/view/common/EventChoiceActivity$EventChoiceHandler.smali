.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;
.super Landroid/os/Handler;
.source "EventChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventChoiceHandler"
.end annotation


# instance fields
.field private final mEventListAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;->mEventListAdapterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;->mEventListAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    if-eqz v0, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->refreshAdapter(Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;->mEventListAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    if-eqz v0, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->refreshChannelNameListAdapter(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->position:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    iget-object v4, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->handleBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v4, v5, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->modifyBitmapForCropRect(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
