.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$2;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->initCardView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_SELECT_HISTORY:Ljava/lang/String;

    const-string v2, "Select history"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideCardViewWithAnim(I)V

    :cond_0
    return-void
.end method
