.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->fancyCoverFlow:Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->fancyCoverFlow:Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->setSelection(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->fancyCoverFlow:Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->setSelection(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
