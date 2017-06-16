.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;
.super Ljava/lang/Object;
.source "CollageColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->initTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$700(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$700(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    iput v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$700(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    :cond_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getColor(Landroid/view/MotionEvent;)I
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$600(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->colorHSVCurent:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p2, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getColor(Landroid/view/MotionEvent;)I
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$600(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->colorHSVCurent:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p2, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
