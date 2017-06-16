.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$13;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->showSmartMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrSmartLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrSmartLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
