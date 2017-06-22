.class Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;
.super Ljava/lang/Object;
.source "GLCollageWidget.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
