.class public Lcom/android/phone/GlobalDataRoamingAccess;
.super Lcom/android/phone/RestrictedDialogPreference;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;,
        Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl0;,
        Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl1;,
        Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

.field mOptionListLayout:Landroid/widget/LinearLayout;

.field private mPosition:I

.field private mRadioButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/RestrictedDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RestrictedDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkSecureSetting(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSelectedRadioButton(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;I)V"
        }
    .end annotation

    iput p2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-ne p2, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getMode()I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDataRoamingEnable()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDataRoamingOneTime()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private negativeButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private positiveButtonClicked()V
    .locals 2

    iget v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/GlobalDataRoamingAccess;->setMode(I)V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    const/4 v4, 0x0

    new-instance v3, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-direct {v3, p0}, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    iput-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    const-string/jumbo v3, "data_roaming"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "data_roaming_onetime"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "data_roam_access_notify"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-static {v1, v4, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-static {v2, v4, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-static {v0, v4, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setMode(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingOneTime(Z)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingOneTime(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingOneTime(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_phone_GlobalDataRoamingAccess_lambda$1(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSelectedRadioButton(Ljava/util/ArrayList;I)V

    return-void
.end method

.method synthetic -com_android_phone_GlobalDataRoamingAccess_lambda$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->positiveButtonClicked()V

    return-void
.end method

.method synthetic -com_android_phone_GlobalDataRoamingAccess_lambda$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->negativeButtonClicked()V

    return-void
.end method

.method public createOptionView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v5, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040067

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f100134

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f100133

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f100133

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mOptionListLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mOptionListLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mOptionListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/GlobalDataRoamingAccess;->createOptionView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mOptionListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/RestrictedDialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->registerContentObserver()V

    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/phone/GlobalDataRoamingAccess;->setDialogLayoutResource(I)V

    invoke-super {p0}, Lcom/android/phone/RestrictedDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0, p1}, Lcom/android/phone/RestrictedDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/RestrictedDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl0;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$-void_onPrepareDialogBuilder_android_app_AlertDialog$Builder_builder_LambdaImpl1;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
