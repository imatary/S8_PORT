.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f070152

    const v4, 0x7f07012c

    const v3, 0x7f0700c6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->clearParametricButtonsSelectedState()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f07029e

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    const v1, 0x7f07029e

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarTitle(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getShadows()I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarTitle(I)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getDarks()I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarTitle(I)V
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLights()I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarTitle(I)V
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighlights()I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarProgress(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->currentZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->setSeekBarVisibility(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0386
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
