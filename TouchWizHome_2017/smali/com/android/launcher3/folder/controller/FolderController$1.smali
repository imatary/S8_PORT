.class Lcom/android/launcher3/folder/controller/FolderController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderController;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-static {v1}, Lcom/android/launcher3/folder/controller/FolderController;->access$000(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    return-void
.end method
