.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$23;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$23;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$23;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClickPlusLayout()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
