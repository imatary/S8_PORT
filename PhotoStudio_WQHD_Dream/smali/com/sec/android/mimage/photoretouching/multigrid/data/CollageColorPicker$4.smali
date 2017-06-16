.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;
.super Ljava/lang/Object;
.source "CollageColorPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->configurationChanged()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$1000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$200(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/View;)V

    return-void
.end method
