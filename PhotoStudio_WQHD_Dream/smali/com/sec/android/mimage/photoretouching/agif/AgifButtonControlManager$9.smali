.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onOrientationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->showGridItemSubMenu(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Landroid/view/View;)V

    :cond_0
    return-void
.end method
