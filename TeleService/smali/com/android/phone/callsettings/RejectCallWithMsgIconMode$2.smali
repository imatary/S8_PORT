.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/animation/Animation;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-get10(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string/jumbo v3, "Animation is done!"

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-get7(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-set7(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-get7(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string/jumbo v3, "animation done, notifyDataSetChanged()"

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    :cond_2
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
