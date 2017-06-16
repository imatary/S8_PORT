.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initColorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCollageBackgroundColor(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1900(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I

    move-result v0

    const v1, 0x7f0e012b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGColor(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
