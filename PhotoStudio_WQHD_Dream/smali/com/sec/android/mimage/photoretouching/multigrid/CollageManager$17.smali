.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initForDesktopMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$subStyleLayout:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;->val$subStyleLayout:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;->val$subStyleLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;->val$subStyleLayout:Landroid/widget/HorizontalScrollView;

    int-to-float v3, v0

    sub-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return v4
.end method
