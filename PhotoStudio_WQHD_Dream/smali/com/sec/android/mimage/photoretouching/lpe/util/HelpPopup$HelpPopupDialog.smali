.class Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
.super Landroid/app/Dialog;
.source "HelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HelpPopupDialog"
.end annotation


# instance fields
.field currentModePopupLayout:Landroid/view/View;

.field mPopupType:I

.field show:I

.field shuffleWidth:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

.field totalWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x400

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setCancelable(Z)V

    return-void
.end method

.method private controlTextSize(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfHugeFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e0399

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e039b

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e039d

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e039e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSizeForButton(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e026b

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e026d

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v1, 0x7f0e026f

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setMaxTextSizeForButton(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMaxTextSize(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setMaxTextSizeForButton(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x41866666    # 16.8f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->controlTextSize(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->controlTextSize(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public initView2()V
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v3, 0x7f0e026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->setHelpPopupCloseBtnListener(Landroid/widget/LinearLayout;)V
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->hidePopup()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public setPopupType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    return-void
.end method

.method public showShuffle(I)V
    .locals 4

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->show:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v3, 0x7f0e0396

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v3, 0x7f0e0397

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v3, 0x7f0e0399

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateLayouts(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->totalWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->updateViews()V

    return-void
.end method

.method public updateTextForCollage()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v2, 0x7f0e0399

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v2, 0x7f0e039b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v2, 0x7f0e039d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    const v2, 0x7f0e039e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08049e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0803b0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08022e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0802d6

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0802d0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0396

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08059b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0802d5

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    check-cast v19, Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0e0092

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v19

    const v20, 0x7f0e0095

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    div-int/lit8 v20, v20, 0x2

    sub-int v14, v19, v20

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0397

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v14

    sub-int v19, v19, v4

    sub-int v19, v19, v10

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0398

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0802d1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->currentModePopupLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0399

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v19

    add-int v19, v19, v15

    sub-int v20, v13, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v19

    if-nez v19, :cond_0

    sub-int v19, v13, v11

    invoke-virtual {v8}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->show:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->showShuffle(I)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->totalWidth:I

    move/from16 v19, v0

    add-int v19, v19, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->shuffleWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    sub-int v19, v19, v4

    add-int v19, v19, v18

    add-int v19, v19, v17

    sub-int v19, v19, v10

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0
.end method
