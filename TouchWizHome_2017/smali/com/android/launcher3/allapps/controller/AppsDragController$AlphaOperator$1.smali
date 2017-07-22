.class Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->dropCompletedWithOutExtra(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;->this$1:Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;->this$1:Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;->this$1:Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_1
    return-void
.end method
