.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;
.super Ljava/lang/Object;
.source "LabelStickerPagersAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->setGridViewProperties(ILandroid/widget/GridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
