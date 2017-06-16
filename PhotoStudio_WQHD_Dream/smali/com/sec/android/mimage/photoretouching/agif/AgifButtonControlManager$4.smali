.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->initGridItemListener()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v2, "846"

    const-string v3, "8582"

    const-string v4, "Remove"

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->execute(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
