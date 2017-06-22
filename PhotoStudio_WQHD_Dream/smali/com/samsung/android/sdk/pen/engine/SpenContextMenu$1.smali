.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v1

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->updateTimer(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
