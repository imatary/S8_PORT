.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$15;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initUI()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$15;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$15;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1800(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setPressed(Z)V

    return-void
.end method
