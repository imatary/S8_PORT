.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->scrollRatioSubmenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$menuView:Landroid/view/View;

.field final synthetic val$scrollview:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;->val$scrollview:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;->val$menuView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;->val$scrollview:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$39;->val$menuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
