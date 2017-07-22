.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileNetworkDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialogNoClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogOkClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mIsCancelable:Z

.field private mIsShowCheckBox:Z

.field private mIsSkip:Z

.field private mIsSystemDialog:Z

.field private mMessage:Ljava/lang/String;

.field private mNoMessage:Ljava/lang/String;

.field private mOkMessage:Ljava/lang/String;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mMessage:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mobile_network_popup_shared_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mSettings:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mActivity:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOkMessage:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mNoMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mActivity:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSystemDialog:Z

    return-void
.end method

.method private getActivity()Landroid/content/Context;
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSystemDialog:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mActivity:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public reCreate()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSystemDialog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "MobileNetworksDialogManager"

    const-string/jumbo v1, "reCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    return-void
.end method

.method public reCreateFromContext(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSystemDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "MobileNetworksDialogManager"

    const-string/jumbo v1, "reCreateFromContext() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mActivity:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    return-void
.end method

.method public setCancelable(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsCancelable:Z

    return-object p0
.end method

.method public setCheckBox(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsShowCheckBox:Z

    return-object p0
.end method

.method public setNoClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNoClickListener(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mNoMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOkClickListener(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOkMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setSkipCondition(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSkip:Z

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->getActivity()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f04008c

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f10019b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v5, 0x7f10012d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsShowCheckBox:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->getActivity()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0056

    invoke-direct {v5, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mOkMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mNoMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsCancelable:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mDialogOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSystemDialog:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d8

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {v5, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-set0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mSettings:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mMessage:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mIsSkip:Z

    if-eqz v5, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->performClick()Z

    :cond_8
    return-object p0

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_1
.end method
