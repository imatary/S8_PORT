.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;
.super Ljava/lang/Object;
.source "CollageColorPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->initFocusListener(Landroid/widget/LinearLayout;)V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getBGColor(I)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$002(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$202(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;->setCollageBackgroundColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/View;)V

    :cond_0
    return-void
.end method
